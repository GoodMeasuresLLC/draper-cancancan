require "draper/cancancan/version"

module Draper
  module CanCanCan
    # actually don't need any code in my gem's namespace .. 
    def can?(action, subject, *extra_args)
      if subject.is_a?(Draper::Decorator)
        super(action,subject.model,*extra_args)
      else
        super(action,subject,*extra_args)
      end
    end

    def cannot?(*args)
      !can?(*args)
    end
  end
end