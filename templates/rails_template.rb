# template.rb
run "echo '# README' > README.rdoc"
run "rm public/index.html"
run "rm app/assets/images/rails.png"
run "cp config/database.yml config/database.yml.example"
generate(:controller, "home index")
route "root :to => 'home#index'"
rake("db:create")
rake("db:migrate")
git :init
git :add => "."
git :commit => "-a -m 'Initial commit'"

# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano'