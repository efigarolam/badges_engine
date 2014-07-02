module BadgesEngine
  class Badge < ActiveRecord::Base
    belongs_to :award
    belongs_to :value
    has_many :levels


    validates :name, presence: true, uniqueness: true
  end
end
