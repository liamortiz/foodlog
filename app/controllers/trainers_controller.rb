class TrainersController < ApplicationController

    def show
        @trainer = Trainer.find(params[:id])
    end

    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.create(params.require(:trainer).permit(:name, :sex))
        redirect_to root_path
    end

    def destroy
        @trainer = Trainer.find(params[:id])
        @trainer.destroy
        redirect_to root_path
    end

end
