require_dependency "badges_engine/application_controller"

module BadgesEngine
  class BadgesController < ApplicationController
    before_action :set_badge, only: [:show, :edit, :destroy]

    expose(:badge)

    def create
      badge = Badge.new(badge_params)
      if badge.save
        redirect_to badge, notice: 'Badge was successfully created.'
      else
        render :new
      end
    end

    def update
      badge = Badge.find(params[:id])
      if badge.update(badge_params)
        redirect_to badge, notice: 'Badge was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @badge.destroy
      redirect_to badges_url, notice: 'Badge was successfully destroyed.'
    end

    private

    def set_badge
      @badge = Badge.find(params[:id])
    end

    def badge_params
      params.require(:badge).permit(
        :name, :image, :description,
        :level, :award_id, :value_id)
    end
  end
end
