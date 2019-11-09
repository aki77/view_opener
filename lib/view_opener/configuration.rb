# frozen_string_literal: true

module ViewOpener
  class Configuration
    attr_accessor :file_link_format

    def initialize
      @file_link_format = 'vscode://file%s'
    end
  end
end
