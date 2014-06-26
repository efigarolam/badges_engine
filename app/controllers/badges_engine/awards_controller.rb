require_dependency "badges_engine/application_controller"

module BadgesEngine
  class AwardsController < ApplicationController
    expose(:award, attributes: :award_params)

    def create
      if award.save
        redirect_to award, notice: 'Award was successfully created.'
      else
        render :new
      end
    end

    def update
      if award.save
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

    def award_params
      params.require(:award).permit(:title, :description)
    end
  end
end
