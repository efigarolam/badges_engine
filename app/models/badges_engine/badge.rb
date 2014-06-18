module BadgesEngine
  class Badge < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    validates :level, numericality: { only_integer: true }
  end
end
