class Event < ApplicationRecord
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  scope :date, -> (date_time) { where 'date_time BETWEEN ? AND ?', date_time.to_date, date_time.to_date+1 }

end
