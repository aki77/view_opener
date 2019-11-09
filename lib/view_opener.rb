require 'view_opener/version'
require 'view_opener/railtie'
require 'view_opener/configuration'

module ViewOpener
  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
