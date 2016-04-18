require "draper/cancancan/version"

module Draper
  module CanCanCan
    # actually don't need any code in my gem's namespace ..
    def can?(action, subject, *extra_args)
      while subject.is_a?(Draper::Decorator)
        subject = subject.model
      end

      super(action, subject, *extra_args)
    end

    def cannot?(*args)
      !can?(*args)
    end
  end
end