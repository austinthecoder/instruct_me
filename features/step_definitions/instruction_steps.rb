When /^I fill in command (\d+) with "([^"]*)"$/ do |command_num, value|
  with_scope(@scope) do
    with_scope(".command_#{command_num}") do
      find("input").set(value)
    end
  end
end