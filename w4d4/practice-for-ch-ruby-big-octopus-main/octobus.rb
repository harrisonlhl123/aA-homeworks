#O(n^2)
def sluggish_octopus(arr)
    max_length = arr.first

    arr.each do |fish1|
        arr.each do |fish2|
            if fish1.length > fish2.length
                max_length = fish1
            else
                max_length = fish2
            end
        end
    end

    max_length
end

#O(n log n)
def dominant_octopus(arr)
    return arr if arr.length <= 1
    first_fish = arr.first
    pivot_num = first_fish.length

    left = arr[1..-1].select { |fish| fish.length < pivot_num }
    right = arr[1..-1].select { |fish| fish.length >= pivot_num }
    left_sorted = dominant_octopus(left)
    right_sorted = dominant_octopus(right)

    sorted_fish = left_sorted + [first_fish] + right_sorted
end


#O(n)
def clever_octopus(arr)
    max_length = arr.first

    arr.each do |fish|
        if fish.length > max_length.length
            max_length = fish
        end
    end

    max_length
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

p clever_octopus(arr) # "fiiiissshhhhhh"

# O(n)
def slow_dance(move, arr)
    arr.each_with_index do |dance_move, i|
        if arr[i] == move
            return i 
        end
    end
end

# O(1)
def fast_dance(move, arr)
    arr.index(move)
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

p fast_dance("up", tiles_array) # 0

p fast_dance("right-down", tiles_array) # 3