class PhotographersController < ApplicationController
    before_action :set_photographer, only: [:show, :edit, :update, :destroy]
    def index
        @photographer = Photographer.all
        render json: @photographer
    end

    def show
    end

    def new
        @photographer = Photographer.new
    end

    def create
        result = PhotographerRegistrationService.new(photographer_params).call
        if result[:success]
            redirect_to result[:photographer], notice: 'Photographer was successfully created.'
        else
            @photographer = Photographer.new(photographer_params)
            flash.now[:alert] = result[:errors].full_messages.join(', ')
            render :new
        end
    end

    def edit
    end
  
    def update
      if @photographer.update(photographer_params)
        redirect_to @photographer, notice: 'Photographer was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
        @photographer.destroy
        redirect_to photographers_url, notice: 'Photographer was successfully destroyed.'
    end

    private

    def set_photographer
      @photographer = Photographer.find(params[:id])
    end

    def photographer_params
        params.require(:photographer).permit(:name, :email, :password, :description)
    end
end