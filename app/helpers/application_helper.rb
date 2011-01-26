module ApplicationHelper

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def css_class_string_for_listable(name, position, total_items)
    [name, "#{name}_#{position}"].tap do |ary|
      ary << "last_#{name}" if position == total_items
    end.join(' ')
  end

end
