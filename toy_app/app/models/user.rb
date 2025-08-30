class User < ApplicationRecord
  has_many :microposts

  validates name: presence
  validates email: presence
end
