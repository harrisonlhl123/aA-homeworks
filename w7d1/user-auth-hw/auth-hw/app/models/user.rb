class User < ApplicationRecord
    validates :username, presence: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: {minimum: 6, allow_nil: true}
    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find(username)
        # `user&.is_password?(password)` is syntactic sugar for
         # `user && user.is_password?(password)`
        if user && user.is_password?(password)
            return user 
        else
            return nil
        end
    end


    def generate_unique_session_token
         # `SecureRandom::urlsafe_base64` does not guarantee uniqueness. Wrapping
        # this call in a loop ensures that no other user has the generated token.
        loop do
            session_token = SecureRandom::urlsafe_base64(16)
            return session_token unless User.exists?(session_token: session_token)
        end
    end


    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end


    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end


    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end


    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end


end