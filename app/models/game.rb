class Game < ActiveRecord::Base
  belongs_to :company
  validates :name, :presence => true
end
