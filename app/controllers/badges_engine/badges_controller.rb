require_dependency "badges_engine/application_controller"

module BadgesEngine
  class BadgesController < ApplicationController
    expose(:badge, attributes: :badge_params)

    def create
      if badge.save
        redirect_to badge, notice: 'Badge was successfully created.'
      else
        render :new
      end
    end

    def update
      if badge.save
        redirect_to badge, notice: 'Badge was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      badge.destroy
      redirect_to badges_url, notice: 'Badge was successfully destroyed.'
    end

    private

    def badge_params
      params.require(:badge).permit(
        :name, :image, :description,
        :award_id, :value_id, :level_id)
    end
  end
end
