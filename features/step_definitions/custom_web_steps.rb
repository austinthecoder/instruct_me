Then /^I should see:$/ do |string|
  string.strip.split("\n").compact.each do |line|
    steps %{Then I should see "#{line}"}
  end
end