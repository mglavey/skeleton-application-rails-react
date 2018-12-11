namespace :add do
  task :add_package, [:package_name] do
    exec 'yarn --cwd client add #{args.package_name.inspect}'
  end
end

desc 'Start development server'
task :start => 'start:development'
