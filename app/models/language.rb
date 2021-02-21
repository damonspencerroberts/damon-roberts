class Language < ApplicationRecord
  has_many :used_languages
  has_many :projects, through: :used_languages
end
