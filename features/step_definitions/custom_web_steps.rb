When /^I am scoped to (.+)$/ do |scope|
  @scope = case scope
  when "the page"
    "body"
  when /step (\d+)/
    ".step_#{$1}"
  else
    raise "Unknown scope #{scope.inspect}"
  end
end

##################################################

Then /^I should see:$/ do |string|
  string.strip.split("\n").compact.each do |line|
    steps %{Then I should see "#{line}"}
  end
end