class Playlist < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, uniqueness: true

end
