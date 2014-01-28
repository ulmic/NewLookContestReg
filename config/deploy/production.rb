set :rails_env, 'production'
set :branch, 'master'

set :keep_releases, 15

set :user, 'newlook'

server "ulgood.ru", :app, :web, :db, :primary => true