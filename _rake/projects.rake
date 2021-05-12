task :default do
  sh 'bundle exec ruby _scripts/update-and-preprocess.rb'
  sh 'bundle exec JEKYLL_ENV=production jekyll build'
end
