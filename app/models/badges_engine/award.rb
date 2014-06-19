module BadgesEngine
  class Award < ActiveRecord::Base
    validates :title, presence: true
  end
end
