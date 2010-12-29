task :deploy => :environment do
  branch = `git branch`.split("\n").map(&:strip).detect { |b| b.starts_with?('*') }.gsub(/^\*\s*/, '')
  if origin = {'dev' => 'staging', 'master' => 'production'}[branch]
    from_to_branch = {'staging' => 'dev:master', 'production' => 'master:master'}[origin]
    puts "deploying to #{origin}"
    `git push #{origin} #{from_to_branch}`
  else
    raise "Can't deploy on the #{branch} branch"
  end
end