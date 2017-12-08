task :logging => :environment do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  ActiveRecord::Base.logger = Logger.new(File.open('log/queries.log', 'a'))
end