=begin
Read in data from file, split on newline, 
for each string after newline split, split on "x" delimiter, 
for each character after split on "x", cast to int
=end
puzzle_input = File.read("2015_day_02_input.txt").split.map {|str|str.split("x").map {|char|char.to_i}}

# Determine how much ribbon is used for a given present
def calc_ribbon(dimensions)
    length = dimensions.at(0)
    width = dimensions.at(1)
    height = dimensions.at(2)
    side_1_perim = (2 * length) + (2 * width)
    side_2_perim = (2 * width) + (2 * height)
    side_3_perim = (2 * height) + (2 * length)
    pres_vol = length * width * height
    ribbon_used = [side_1_perim, side_2_perim, side_3_perim].min + pres_vol
    return ribbon_used
end

# Determine the total amount of ribbon used
total_ribbon = 0
for i in (0...puzzle_input.length)
    total_ribbon += calc_ribbon(puzzle_input.at(i))
end

puts total_ribbon