require_dependency "badges_engine/application_controller"

module BadgesEngine
  class AwardsController < ApplicationController
    before_action :set_award, only: [:show, :destroy]
    expose(:award)

    def create
      award = Award.new(award_params)
      if award.save
        redirect_to award, notice: 'Award was successfully created.'
      else
        render :new
      end
    end

    def update
      award = Award.find(params[:id])
      if award.update(award_params)
        redirect_to award, notice: 'Award was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      award.destroy
      redirect_to awards_url, notice: 'Award was successfully destroyed.'
    end

    private

    def set_award
      @award = Award.find(params[:id])
    end

    def award_params
      params.require(:award).permit(:title, :description)
    end
  end
end
