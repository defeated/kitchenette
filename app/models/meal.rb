class Meal < ActiveRecord::Base
  belongs_to :order
  belongs_to :user

  validates :description, presence: true
end
