module BadgesEngine
  module BadgesHelper
    def show_award(award)
      award.title unless award.nil?
    end

    def show_value(value)
      value.name unless value.nil?
    end

    def show_level(level)
      level.tier unless level.nil?
    end
  end
end
