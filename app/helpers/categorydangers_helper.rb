module CategorydangersHelper

  def nested_categorydangers(categorydangers)
    categorydangers.map do |categorydanger, sub_categorydangers|
      render(categorydanger) + content_tag(:div, nested_categorydangers(sub_categorydangers), :class =>  "nested_categorydangers")
    end.join.html_safe
  end

end

