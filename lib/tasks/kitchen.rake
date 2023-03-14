namespace :kitchen do
  desc 'TestKitchen create all'
  task :create do
    sh 'bundle exec kitchen create'
  end

  desc 'TestKitchen converge all'
  task :converge do
    sh 'bundle exec kitchen converge'
  end

  desc 'TestKitchen verify all'
  task :verify do
    sh 'bundle exec kitchen verify'
  end

  desc 'TestKitchen destroy all'
  task :destroy do
    sh 'bundle exec kitchen destroy'
  end
end
