namespace :test do
  desc 'Lint'
  task :cookstyle do
    sh 'bundle exec cookstyle'
  end

  desc 'Markdown'
  task :mdl do
    sh 'bundle exec mdl README.md documentation/'
  end

  desc 'TestKitchen'
  task :kitchen do
    Rake::Task['kitchen:destroy'].invoke
    Rake::Task['kitchen:destroy'].reenable
    Rake::Task['kitchen:create'].invoke
    Rake::Task['kitchen:converge'].invoke
    Rake::Task['kitchen:verify'].invoke
    Rake::Task['kitchen:destroy'].invoke
  end

  desc 'All tests'
  task :all do
    Rake::Task['test:mdl'].invoke
    Rake::Task['test:cookstyle'].invoke
    Rake::Task['test:kitchen'].invoke
  end
end

task :test do
  Rake::Task['test:all'].invoke
end
