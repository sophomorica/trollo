class Task < ApplicationRecord
  belongs_to :list

  def name
    "#{self.task_name}"
  end
end
