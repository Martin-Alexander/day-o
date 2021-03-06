class Category < ApplicationRecord
  has_many :action_categories, dependent: :destroy
  has_many :actions, through: :action_categories

  has_many :user_categories, dependent: :destroy
  has_many :users, through: :user_categories

end
