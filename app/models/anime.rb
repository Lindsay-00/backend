class Anime < ApplicationRecord
    has_many :comments
    has_many :watch_later_lists
    has_many :users, through: :comments
    has_many :users, through: :watch_later_lists

end
