puzzle_input = File.read("2015_day_03_input.txt").split("")

Claus = Struct.new(:x_coord, :y_coord, :turn)
santa = Claus.new
santa.x_coord = 0
santa.y_coord = 0
santa.turn = true

robo_santa = Claus.new
robo_santa.x_coord = 0
robo_santa.y_coord = 0
robo_santa.turn = false

houses_visited = [[0, 0]]

for i in (0...puzzle_input.length)
    case puzzle_input.at(i)
    when '^' then
        if santa.turn then santa.x_coord += 1
        else robo_santa.x_coord += 1
        end
    when 'v' then
        if santa.turn then santa.x_coord -= 1
        else robo_santa.x_coord -= 1
        end
    when '>' then
        if santa.turn then santa.y_coord += 1
        else robo_santa.y_coord += 1
        end
    when '<' then
        if santa.turn then santa.y_coord -= 1
        else robo_santa.y_coord -= 1
        end
    end

    if santa.turn
        houses_visited.include?([santa.x_coord, santa.y_coord]) ? nil : houses_visited.push([santa.x_coord, santa.y_coord])
    else
        houses_visited.include?([robo_santa.x_coord, robo_santa.y_coord]) ? nil : houses_visited.push([robo_santa.x_coord, robo_santa.y_coord])
    end
    santa.turn ? santa.turn = false : santa.turn = true
    robo_santa.turn ? robo_santa.turn = false : robo_santa.turn = true
end

puts houses_visited.length