pt = Rake::Task['assets:environment']
Rake.application.send(:eval, "@tasks.delete('assets:environment')")

namespace :assets do
  task :environment do
    module ::MongodbLogger
      module Base
        def self.included(base)
          puts "Skipping connection to Mongo DB"
        end
      end
    end

    pt.execute
  end
end