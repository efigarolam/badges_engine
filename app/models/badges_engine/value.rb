module BadgesEngine
  class Value < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
  end
end
