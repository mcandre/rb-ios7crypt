Given(/^"([^"]*)"$/) do |command|
  @cucumber = `#{command}`
end

Then(/^the output is like "([^"]*)"$/) do |text|
  /#{text}/.match(@cucumber).should_not == nil
end

Then(/^the output is "([^"]*)"$/) do |text|
  @cucumber.include?(text).should == true
end
