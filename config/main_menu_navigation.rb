# encoding: utf-8
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :training,
                 'Задачи',
                 task_path,
                 :highlights_on => /^\/task/

    primary.item :science,
                 'Критерии',
                 criterions_path,
                 :highlights_on => /^\/criterion/
  end
end
