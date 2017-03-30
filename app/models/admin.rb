class Admin < ActiveRecord::Base

  has_one :user, as: :role

  validates :first_name, presence: true
  validates :last_name, presence: true

  delegate :email, to: :user

end
