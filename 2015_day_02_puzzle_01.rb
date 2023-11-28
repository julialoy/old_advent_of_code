file_data = File.read("2015_day_02_input.txt").split

# Take each line, split on "x" character and cast all chars to ints
puzzle_input = []
for i in (0...file_data.length)
    puzzle_input.push(file_data.at(i).split("x").map {|str|str.to_i})
end

# Find total wrapping paper needed for a given present
def wrap_present(dimensions)
    length = dimensions.at(0)
    width = dimensions.at(1)
    height = dimensions.at(2)
    side_1 = length * width
    side_2 = width * height
    side_3 = length * height
    extra = [side_1, side_2, side_3].min
    paper_used = (2 * side_1) + (2 * side_2) + (2 * side_3) + extra
    return paper_used
end

# Calculate paper needed for all presents
total_paper = 0
for i in (0...puzzle_input.length)
    total_paper += wrap_present(puzzle_input.at(i))
end

puts total_paper