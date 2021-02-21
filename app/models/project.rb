class Project < ApplicationRecord
  has_many :used_languages
  has_many :languages, through: :used_languages
  has_many_attached :photos
end
