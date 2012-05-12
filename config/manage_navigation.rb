# encoding: utf-8
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :manage_task,
                 'Классы задач',
                 manage_tasks_path,
                 :highlights_on => /^\/$|tasks/

    primary.item :manage_criterion,
                 'Критерии',
                 manage_criterions_path,
                 :highlights_on => /^\/$|criterions/
                 
    primary.item :manage_category,
                 'Категории',
                 manage_categories_path,
                 :highlights_on => /^\/$|categories/
                 
    primary.item :manage_danger,
                 'Риски',
                 manage_dangers_path,
                 :highlights_on => /^\/$|dangers/
end
end



