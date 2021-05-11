task :default do
  sh 'bundle exec ruby _scripts/update-and-preprocess.rb'
  sh 'JEKYLL_ENV=production bundle exec jekyll build'
end
