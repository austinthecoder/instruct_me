namespace :deploy do
  desc "deploy to staging"
  task :staging do
    `git push staging dev:master`
  end

  desc "deploy to production"
  task :production do
    `git push production master:master`
  end
end