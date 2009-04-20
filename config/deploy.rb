set :application,   "v8labs"
set :scm,           'git'
set :repository,    "git@veader.org:#{application}"
set :deploy_to,     "/var/www/#{application}"
set :user,          'web'
set :keep_releases, 5
set :use_sudo,      false
set :deploy_via,    :copy
set :port,          2222

role :web,          "v8labs.com"
# role :app,        "v8labs.com"
# role :db,         "v8labs.com, :primary => true

deploy.task :restart, :roles => :web do
  # DO NOTHING
end

deploy.task :finalize_update, :except => { :no_release => true } do
  # DO NOTHING
end