module ApplicationHelper

  def nested_categories(categories)
    categories.map do |category, sub_categories|
      render(category) + content_tag(:div, nested_categories(sub_categories), :class =>  "nested_categories")
    end.join.html_safe
  end
  
 def nested_criterins(categories)
    categories.map do |category, sub_categories|
      render(category) + content_tag(:div, nested_categories(sub_categories), :class =>  "nested_categories")
    end.join.html_safe
  end
  
end
