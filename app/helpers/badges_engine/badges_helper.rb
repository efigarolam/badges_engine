module BadgesEngine
  module BadgesHelper
    def show_award(award)
      award.title unless award.nil?
    end
  end
end
