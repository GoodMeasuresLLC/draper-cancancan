class ActivityDecorator < Draper::Decorator
  delegate_all

  def bling?
    true
  end
end