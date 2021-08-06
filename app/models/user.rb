class User < ApplicationRecord
    has_many :comments
    has_many :watch_later_lists
    has_many :animes, through: :comments
    has_many :animes, through: :watch_later_lists
end
