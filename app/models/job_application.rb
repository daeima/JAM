class JobApplication < ApplicationRecord
  belongs_to :user
  has_many :interviews, dependent: :destroy

  validates :title, :company_name, presence: true
end
