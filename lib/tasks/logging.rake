task :logging => :environment do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end