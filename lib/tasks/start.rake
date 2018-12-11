namespace :start do
  task :backend do
    exec 'heroku local -f Procfile_BE.dev'
  end

  task :frontend do
    exec 'heroku local -f Procfile_FE.dev'
  end
end

desc 'Start development server'
task :start_backend => 'start:backend'
task :start_frontend => 'start:frontend'
