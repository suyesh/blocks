scores = [83,71,92,64,98,87,75,69]

scores_doubled = scores.map {|n| n * 2}
p scores_doubled

total_score = scores.reduce(0) {|total, num| total += num}

p total_score

evens, odds = scores.partition {|num| num.even?}

p evens
p odds
