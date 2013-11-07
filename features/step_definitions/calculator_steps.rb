假如 /^两个数字做加法"([^"]*)"$/ do |input|  #"
	@input = input
end

当 /^计算器运行$/ do
	@output = `ruby calc.rb #{@input}`
	raise('Error') unless $?.success?	
end

那么 /^输出应该是 "([^"]*)"$/ do |output_expectation| #"
  @output.should == output_expectation
end
