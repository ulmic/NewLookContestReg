class UserDecorator < Draper::Decorator
  delegate_all

  def title
    model.first_name + " " + model.middle_name + " " + model.last_name
  end
end
