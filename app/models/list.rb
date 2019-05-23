class List < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :board

  def name
    "#{self.list_name}"
  end
end
