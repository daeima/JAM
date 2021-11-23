class Interview < ApplicationRecord
  belongs_to :job_application
  has_many :contacts, dependent: :destroy

  validates :start_time, :end_time, presence: true
end
