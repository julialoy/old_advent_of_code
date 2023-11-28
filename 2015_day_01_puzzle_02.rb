# Open and read the file for the raw puzzle input
raw_input = File.read("2015_day_01_input.txt")
puzzle_input = raw_input.split("")

floor_num = 0
char_pos = 0
while char_pos < puzzle_input.length and floor_num >= 0
    case puzzle_input[char_pos]
    when '(' then
        floor_num += 1
    when ')' then
        floor_num -= 1
    end
    char_pos += 1
end

puts char_pos