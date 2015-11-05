require "draper/cancan/version"

puts "Draper::CanCan being loaded!"
module Draper
  module CanCan
    # actually don't need any code in my gem's namespace .. 
    def can?(action, subject, *extra_args)
      puts "Draper::CanCan#can? was called!"
      if subject.is_a?(Draper::Decorator)
        super(action,subject.model,*extra_args)
      else
        super(action,subject,*extra_args)
      end
    end

    def cannot?(*args)
      puts "Draper::CanCan#cannot?() was called"
      !can?(*args)
    end
  end
end