require File.expand_path(File.dirname(__FILE__) + "/1.rb")

tests = {
  [1, 2, 4] => 7.0/3,
  [1, 2.5, 6.5, 9.0, 7.8, 1.2, 4.6, -2] => 3.825,
  [] => 0
}.map { |input, expected|
  actual = avg input
  [actual == expected, "avg(#{input.inspect}), expected: #{expected}, actual: #{actual}"]
}

results = tests.map do |result, description|
            if result
              "Pass : #{description}"
            else
              "__Fail : #{description}__"
            end
          end

puts results.join("|")
