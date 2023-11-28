require 'digest'

secret_key = 'yzbqklnj'
puzzle_1_ansr = File.read("2015_day_04_puzzle_01_answer.txt").to_i

num_found = false
i = puzzle_1_ansr
while !num_found 
    candidate = secret_key + i.to_s
    result = Digest::MD5.hexdigest candidate
    lead_result = result[0..5]
    if lead_result == "000000" then num_found = true
    else i += 1
    end
end

puts i