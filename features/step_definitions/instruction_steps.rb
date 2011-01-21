When /^I press "([^"]*)" within Step (\d+)$/ do |button, step_num|
  with_scope(get_step_selector(step_num)) do
    click_button(button)
  end
end

When /^I fill in "([^"]*)" with "([^"]*)" within Step (\d+)$/ do |field, value, step_num|
  if field =~ /^Command (\d+)$/
    step_index = step_num.to_i - 1
    command_index = $1.to_i - 1
    field = "instruction_steps_attributes_#{step_index}_commands_attributes_#{command_index}_body"
  end

  with_scope(get_step_selector(step_num)) do
    fill_in(field, :with => value)
  end
end

def get_step_selector(step_num)
  ".step:nth-child(#{step_num})"
end