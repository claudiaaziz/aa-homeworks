# Sluggish Octopus O(n^2)

def sluggish_octopus(fishes)
    longest = fishes[0]
    (0...fishes.length).each do |fish_1_idx|
        (fish_1_idx...fishes.length).each do |fish_2_idx|
            if fishes[fish_1_idx].length > fishes[fish_2_idx].length
                longest = fishes[fish_1_idx]
            else
                longest = fishes[fish_2_idx]
            end
        end
    end
    longest
end

# p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# "fiiiissshhhhhh"

# # Dominant Octopus

# def dominant_octopus(fishes)
#     return fishes if fishes.length < 2
#     mid_idx = fishes.length / 2
#     left = fishes[0...mid_idx]
#     right = fishes[mid_idx..-1]
#     merge(dominant_octopus(left), dominant_octopus(right))
# end

# def merge(left, right)
#     merged = []
#     until left.empty? or right.empty?
#         if left[0].length < right[0].length
#             merged << left.shift
#         else
#             merged << right.shift
#         end
#     end
#     merged + left + right
# end

# p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

# Clever Octopus O(n)

def clever_octopus(fishes)
    longest = fishes[0]
    fishes.each do |fish|
        longest = fish if longest.length < fish.length
    end
    longest
end

# p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up"]

def slow_dance(dir, tiles_array)
    tiles_array.each_index do |i|
        return i if tiles_array[i] == dir
    end
end

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)

def fast_dance(dir, tiles_array)
    tiles_array
end

p fast_dance("right-down", tiles_array)
p fast_dance("up", tiles_array)