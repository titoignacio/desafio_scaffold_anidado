class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :email, uniqueness: true
end
