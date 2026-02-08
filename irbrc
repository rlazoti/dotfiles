if ENV['RAILS_ENV']
  IRB.conf[:IRB_RC] = Proc.new do
    class LogFormatter
      SEVERITY_TO_COLOR_MAP = {
        "DEBUG" => "\e[33m", # yellow
        "INFO" => "\e[32m",  # green
        "WARN" => "\e[34m",  # blue
        "ERROR" => "\e[31m", # red
        "FATAL" => "\e[35m", # magenta
        "UNKNOWN" => "\e[37m" # white
      }.freeze

      def call(severity, time, progname, msg)
        formatted_severity = format("%-5s", severity)
        formatted_time = time.strftime("%Y-%m-%d %H:%M:%S")
        color = SEVERITY_TO_COLOR_MAP[severity] || "\e[37m"
        reset = "\e[0m"

        "#{color}[#{formatted_time}] #{formatted_severity} : #{msg}#{reset}\n"
      end
    end

    module ExtraLogMethods
      def log_append(**args)
        info(**args)
      rescue => e
        puts(**args)
      end

      def log_append_error(exception, extra = {})
        error_hash = {}
        error_hash[:name] = exception.class.to_s
        error_hash[:message] = exception.to_s

        log_append(errors: [error_hash.merge({extra: extra.inspect})])
      end
    end

    puts "👉 Enabling Rails Console log..."
    logger = ActiveSupport::Logger.new(STDOUT)
    logger.extend(ExtraLogMethods)
    logger.formatter = LogFormatter.new
    ActiveRecord::Base.logger = logger
    Rails.logger = logger

    begin
      puts "👉 Including FactoryBot methods..."
      include FactoryBot::Syntax::Methods
    rescue
      puts "👎 Factorybot not available..."
    end

    puts "✅ Done!"
  end
end
