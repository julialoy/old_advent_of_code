require 'digest'

secret_key = 'yzbqklnj'

num_found = false
i = 1
while !num_found 
    candidate = secret_key + i.to_s
    result = Digest::MD5.hexdigest candidate
    lead_result = result[0..4]
    if lead_result == "00000" then num_found = true
    else i += 1
    end
end

puts i