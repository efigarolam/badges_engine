module BadgesEngine
  class Badge < ActiveRecord::Base
    belongs_to :award
    belongs_to :value
    belongs_to :level


    validates :name, presence: true, uniqueness: true
  end
end
