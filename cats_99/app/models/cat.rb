class Cat < ApplicationRecord
  COLORS = [
    "red",
    "blue",
    "yellow",
    "green",
    "purple"
  ].freeze


  validates :birth_date, :name, :description, presence: true
  validates :sex, presence: true, inclusion: { in: %w(M F) }
  validates :color, presence: true, inclusion: COLORS



  def age
    Date.today.year - birth_date.year
  end

  has_many :cat_rental_requests,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest,
  dependent: :destroy
end
