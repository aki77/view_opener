module ViewOpener
  class Current < ActiveSupport::CurrentAttributes
    attribute :views

    resets { self.views = [] }

    def initialize
      super
      self.views = []
    end
  end
end
