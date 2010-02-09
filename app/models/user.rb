class User < ActiveRecord::Base
  acts_as_authentic

  has_many :participations, :class_name => "Participant"
  has_many :events, :through => :participations
  
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
end
