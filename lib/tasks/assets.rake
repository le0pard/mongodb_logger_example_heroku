#pt = Rake::Task['assets:environment']
#Rake.application.send(:eval, "@tasks.delete('assets:environment')")
=begin
namespace :assets do
  task :environment do
    module ::MongodbLogger
      module InitializerMixin
        def create_logger(config)
          logger = ::Logger.new(STDOUT)
          logger.level = ::Logger.const_get(([ENV['LOG_LEVEL'].to_s.upcase, "INFO"] & %w[DEBUG INFO WARN ERROR FATAL UNKNOWN]).compact.first)
          logger
        end
      end
    end

    pt.execute
  end
end
=end