require File.expand_path(File.dirname(__FILE__) + "/2.rb")

test_1_1 = [[1,2,3,4,5],[6,7,8,9,10]]
test_1_2 = [[10,5], [9,4], [8,3], [7,2], [6,1]]
test_2_1 = [[1,2,3],[4,5,6],[7,8,9]]
test_2_2 = [[9,8,7],[6,5,4],[3,2,1]]

tests = [[test_1_2 == trans(test_1_1), "#{test_1_1} => #{test_1_2}"], \
	     [test_1_1 == trans(trans(test_1_1)), "trans 2 times == original array"], \
	     [test_2_2 == trans(test_2_1), "#{test_2_1} => #{test_2_2}"]
		]

result = []
tests.each do |item|
	if item[0]
		result << "Pass : #{item[1]}"
	else 
		result << "__Fail : #{item[1]}__"
	end
end
puts result.join("|")
