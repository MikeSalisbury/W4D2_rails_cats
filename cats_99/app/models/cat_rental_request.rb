class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, presence: true, inclusion: { in: %w(APPROVED PENDING DENIED) }
  validate :does_not_overlap_approved_request

  belongs_to :cat,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :Cat

  def overlapping_requests
    CatRentalRequest.select('*').where("end_date > #{self.start_date}" )
  end

  def overlapping_approved_requests
    cat_rentals = overlapping_requests
    cat_rentals.select { |cat_rentals| cat_rentals.cat_id = self.cat_id }
  end

  def does_not_overlap_approved_request
    if !overlapping_approved_requests.empty?
      errors.add(:rental_conflict, 'Cat cannot be rented. Suckaaaaa')
    end
  end

end
