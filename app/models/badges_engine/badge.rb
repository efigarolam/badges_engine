module BadgesEngine
  class Badge < ActiveRecord::Base
    belongs_to :award
    belongs_to :value
    after_initialize :default_level

    validates :name, presence: true, uniqueness: true
    validates :level, numericality: { only_integer: true }

    private
    def default_level
      self.level ||= 1
    end
  end
end
