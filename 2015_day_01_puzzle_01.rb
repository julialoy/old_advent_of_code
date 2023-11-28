# Open and read the file for the raw puzzle input
raw_input = File.read("2015_day_01_input.txt")
puzzle_input = raw_input.split("")

floor_num = 0
for i in (0...puzzle_input.length)
    case puzzle_input.at(i)
    when '(' then
        floor_num += 1
    when ')' then
        floor_num -= 1
    end
end

puts floor_num