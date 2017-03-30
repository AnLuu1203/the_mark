class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  belongs_to :role, polymorphic: true

  def admin?
    role_type == 'Admin'
  end

  def customer?
    role_type == 'Customer'
  end

end
