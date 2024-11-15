class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # before_destroy :check_bookmarks


private

  # def check_bookmarks
  #   if bookmarks.any?
  #     errors.add(:base, "You can’t delete a movie if it is referenced in at least one bookmark.")
  #     throw(:abort)
  #   end
  # end
end
