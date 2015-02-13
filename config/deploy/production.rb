set :rails_env, 'production'
set :branch, 'master'

set :keep_releases, 15

set :user, 'newlook'

server "ulmic.ru", :app, :web, :db, :primary => true
