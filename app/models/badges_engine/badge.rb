module BadgesEngine
  class Badge < ActiveRecord::Base
    validates :name, presence: true
    validates :level, numericality: { only_integer: true }
  end
end
