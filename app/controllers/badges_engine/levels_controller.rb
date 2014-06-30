require_dependency "badges_engine/application_controller"

module BadgesEngine
  class LevelsController < ApplicationController
    expose(:level, attributes: :level_params)

    def create
      if level.save
        redirect_to level, notice: 'level was successfully created.'
      else
        render :new
      end
    end

    def update
      if level.save
        redirect_to level, notice: 'level was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      level.destroy
      redirect_to levels_url, notice: 'level was successfully destroyed.'
    end

    private

    def level_params
      params.require(:level).permit(:tier, :badge_alias)
    end
  end
end
