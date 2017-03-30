class Customer < ActiveRecord::Base

  has_one :user, as: :role

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :phone, presence: true, on: :update
  validates :address, presence: true, on: :update

  delegate :email, to: :user

end
