require_dependency "badges_engine/application_controller"

module BadgesEngine
  class ValuesController < ApplicationController
    expose(:value, attributes: :value_params)

    def create
      if value.save
        redirect_to value, notice: 'Value was successfully created.'
      else
        render :new
      end
    end

    def update
      if value.save
        redirect_to value, notice: 'Value was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      value.destroy
      redirect_to values_url, notice: 'Value was successfully destroyed.'
    end

    private

    def value_params
      params.require(:value).permit(:name, :description)
    end
  end
end
