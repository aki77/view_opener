require 'rails/railtie'

module ViewOpener
  class Railtie < Rails::Railtie
    initializer 'initialize_view_opener', after: 'active_support.reset_all_current_attributes_instances' do |app|
      require 'view_opener/subscriber'
      Subscriber.attach_to :action_view
    end

    ActiveSupport.on_load :action_view do
      require 'view_opener/helpers'
      include Helpers
    end
  end
end
