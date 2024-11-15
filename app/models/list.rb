class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true


# When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
end
