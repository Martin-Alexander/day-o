class Challenge < ApplicationRecord
  has_many :challenge_categories
  has_many :challenge_subscriptions, dependent: :destroy
  has_many :categories, through: :challenge_categories
  has_many :actions, dependent: :destroy
end
