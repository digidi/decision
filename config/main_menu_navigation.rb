# encoding: utf-8
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :task,
                 'Задачи',
                 tasks_path,
                 :highlights_on => /^\/task/

    primary.item :criterion,
                 'Критерии',
                 criterions_path,
                 :highlights_on => /^\/criterion/
    primary.item :criterion,
                 'Категории',
                 categories_path,
                 :highlights_on => /^\/category/
  end
end
