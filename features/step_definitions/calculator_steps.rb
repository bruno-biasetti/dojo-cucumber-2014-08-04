Given(/^I pressed the number (\d+)$/) do |number|
  @calculator.add_number(number)
end

Given(/^choose the operation (.*?)$/) do |operation|
  @calculator.operation = operation
end

Then(/^the result should be (\d+)$/) do |result|
  expect(@result).to eq(result)
end

Then(/^return should be "(.*?)"$/) do |result|
  expect(@result).to eq(result)
end

When(/^I pressed the button =$/) do
  @result = @calculator.calculate
end

Before do
  @calculator = Calculator.new
end