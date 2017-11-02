require File.expand_path(File.dirname(__FILE__) + "/3.rb")

tests = [[1.kg == 1.kg, "1.kg == 1.kg"],\
         [(1.kg - 100.g) == 900.g, "(1.kg - 100.g) == 900.g"], \
         [(1.kg + 1.g) > 1000.g, "(1.kg + 1.g) > 1000.g"]]
result = []
tests.each do |item|
	if item[0]
		result << "Pass : #{item[1]}"		
	else 
		result << "__Fail : #{item[1]}__"
	end
end
puts result.join("|")
