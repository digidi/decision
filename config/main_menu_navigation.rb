# encoding: utf-8
SimpleNavigation::Configuration.run do |navigation|
 navigation.items do |primary|
    primary.item :task,
                 'Классы задач',
                 tasks_path,
                 :highlights_on => /^\/tasks/

    primary.item :criterion,
                 'Критерии',
                 criterions_path,
                 :highlights_on => /^\/criterions/
                 
    primary.item :category,
                 'Категории',
                 categories_path,
                 :highlights_on => /^\/categories/
                 
    primary.item :danger,
                 'Риски',
                 dangers_path,
                 :highlights_on => /^\/dangers/
    end
end
