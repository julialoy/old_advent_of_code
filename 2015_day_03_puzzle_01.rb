puzzle_input = File.read("2015_day_03_input.txt").split("")

Claus = Struct.new(:x_coord, :y_coord)
santa = Claus.new
santa.x_coord = 0
santa.y_coord = 0
houses_visited = [[santa.x_coord, santa.y_coord]]

for i in (0...puzzle_input.length)
    case puzzle_input.at(i)
    when '^' then
        santa.x_coord += 1
    when 'v' then
        santa.x_coord -= 1
    when '>' then
        santa.y_coord += 1
    when '<' then
        santa.y_coord -= 1
    end
    
    houses_visited.include?([santa.x_coord, santa.y_coord]) ? 
    next : 
    houses_visited.push([santa.x_coord, santa.y_coord])
end

puts houses_visited.length