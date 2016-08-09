# https://www.hackerrank.com/contests/rookierank/challenges/counting-valleys
# Enter your code here. Read input from STDIN. Print output to STDOUT
steps = gets
sequence = gets
valley = 0
valley_started = mountain_started = nil
mountain = 0
steps = { up: 0, down: 0 }

sequence.each_char do |step|
    if step == 'U'
        steps[:up] += 1
    elsif step == 'D'
        steps[:down] += 1
    end
    
    if steps[:up] == steps[:down]
        # sea level
        valley_started = mountain_started = nil
    end
    
    if (steps[:down] - steps[:up] == 1) && !valley_started
        # Started a valley
        valley_started = true
        mountain_started = false
        valley += 1
    end
    
    if (steps[:up] - steps[:down] == 1) && !mountain_started
        # Started a mountain
        mountain_started = true
        valley_started = false
        mountain += 1
    end
end

puts valley

