class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over == true
      take_turn
    end

    if @game_over == true
      game_over_message
      reset_game
    end
  end

  def take_turn
    puts show_sequence
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length+=1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts "Repeat back the sequence"
    input = gets.chomp.split(" ")
    if input != @seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Great job!"
  end

  def game_over_message
    puts "Wrong sequence"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end