module BadgesEngine
  class Level < ActiveRecord::Base
    has_many :badges
    after_initialize :default_tier

    validates :tier, presence: true, numericality: { only_integer: true }

    private

    def default_tier
      self.tier ||= 1
    end
  end
end
