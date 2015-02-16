set :stages, %w(production vagrant)
set :default_stage, "vagrant"

require 'capistrano/ext/multistage'
require 'capi/unicorn'
require "rvm/capistrano"
require 'bundler/capistrano'

set :application, "newlook"
set :rvm_type, :system

set :use_sudo, false

set :rake, "#{rake} --trace"
set :app_dir, "/srv/#{application}"
set :current_path, "#{app_dir}/current"
set :deploy_to, "#{app_dir}"

set :ssh_options, { forward_agent: true }
default_run_options[:pty] = true

set :repository, "https://github.com/ulmic/NewLookContestReg.git"  # Your clone URL
set :scm, "git"
set :deploy_via, :remote_cache

desc "Seed database data"

namespace :assets do
  task :precompile do
    run "cd #{current_path} && RAILS_ENV=#{rails_env} #{rake} assets:precompile"
  end
end

namespace :db do
  task :seed do
    run "cd #{current_path} && RAILS_ENV=#{rails_env} #{rake} db:seed"
  end

  task :migrate do
    run "cd #{current_path} && RAILS_ENV=#{rails_env} #{rake} db:migrate"
  end
end
before 'deploy:restart', 'db:migrate'
before 'deploy:restart', 'assets:precompile'

after "deploy:restart", "unicorn:restart"
#require 'capistrano_colors'
