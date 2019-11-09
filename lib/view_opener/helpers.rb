require 'view_opener/current'

module ViewOpener
  module Helpers
    def view_opener
      view_dir = Rails.root.join('app', 'views')
      console_logs = Current.views.map do |view|
        name = view.sub(%r{^#{view_dir}/}, '')
        link = sprintf(ViewOpener.configuration.file_link_format, view)
        "console.log('%c#{name}: %o', 'font-weight: bold;', '#{link}');"
      end

      javascript_tag <<~JS
        if (console && console.groupCollapsed) {
          console.log('%c[view opener] %c%d views', 'font-weight: bold', '', #{console_logs.size});
          console.groupCollapsed();
          #{console_logs.join("\n")}
          console.groupEnd();
        }
      JS
    end
  end
end
