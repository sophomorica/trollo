class Board < ApplicationRecord
  has_many :lists, dependent: :destroy

  def name
    "#{self.board_name}"
  end
end
