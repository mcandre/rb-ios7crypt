Given(/^"([^"]*)"$/) do |command|
  @cucumber = `#{command}`
end

Then(/^the output is like "([^"]*)"$/) do |text|
  expect(@cucumber).to match(/#{text}/)
end

Then(/^the output is "([^"]*)"$/) do |text|
  expect(@cucumber).to include(text)
end
