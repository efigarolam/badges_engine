module BadgesEngine
  class Badge < ActiveRecord::Base
    belongs_to :award

    validates :name, presence: true, uniqueness: true
    validates :level, numericality: { only_integer: true }
  end
end
