class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, email: true
end
