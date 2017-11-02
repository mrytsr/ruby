require File.expand_path(File.dirname(__FILE__) + "/4.rb")

tests = {
  '1 + 1 = #{1 + 1}' => '1 + 1 = 2',
  '10 / 3 = #{ 10 / 3 }' => '10 / 3 = 3',
  '2 ^ 10 = #{2 ** 10}' => '2 ^ 10 = 1024',
  '#{"$" * 3} test #{"$" * 3}' => '$$$ test $$$'
}.map { |input, expected|
  actual = parse input
  [actual == expected, "parse(#{input.inspect}), expected: #{expected.inspect}, actual: #{actual.inspect}"]
}

results = tests.map do |result, description|
            if result
              "Pass : #{description}"
            else
              "__Fail : #{description}__"
            end
          end

puts results.join("|")

