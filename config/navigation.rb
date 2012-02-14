# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'your_selected_class'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  # navigation.active_leaf_class = 'your_active_leaf_class'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name| "<span>#{name}</span>"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
  
    # encoding: utf-8

    primary.item :manage_chairs, "<span class='decreased'>наши</span> кафедры",
                  manage_chairs_path, :id => "subfaculties",
                  :highlights_on => /^\/manage$|^\/manage\/chairs/
    primary.item :manage_human, "<span class='decreased'>наши</span> люди",
                  manage_humans_path, :id => "humans",
                  :highlights_on => /^\/manage\/humans/
    primary.item :manage_specialities, "<span class='decreased'>наши</span> специальности",
                  manage_specialities_path, :id => "specialities",
                  :highlights_on => /^\/manage\/specialities/
    primary.item :manage_abstracts, "<span class='decreased'>наши</span> РЖ",
                  manage_disks_path, :id => "abstracts",
                  :highlights_on => /^\/manage\/(disks|issues)/
    primary.item :manage_licenses, "<span class='decreased'>регистрация</span> УМО",
                  manage_licenses_path, :id => "licenses",
                  :highlights_on => /^\/manage\/licenses/
  end

end

  end

end
