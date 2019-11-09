require 'view_opener/current'

module ViewOpener
  class Subscriber < ActiveSupport::Subscriber
    def render_template(event)
      Current.views << event.payload[:identifier]
      if event.payload[:layout].present?
        # TODO: guess of extension
        # Current.views << Rails.root.join('app', 'views', event.payload[:layout])
      end
    end

    def render_partial(event)
      Current.views << event.payload[:identifier]
    end

    def render_collection(event)
      Current.views << event.payload[:identifier]
    end
  end
end
