class ClimbersController < ApplicationController

    def index
        @climbers = Climber.all
        render json: @climbers, except: [:created_at, :updated_at]
    end

    def show
        @climber = Climber.find params[:id]
        render json: @climber, only: [:name, :hometown, :age]
    end

    def create
        @climber = Climber.create name: params[:name], hometown: params[:hometown], age: params[:age]
        render json: @climber
    end

    def update
        @climber = Climber.find params[:id]
        @climber.update name: params[:name], hometown: params[:hometown], age: params[:age]
        render json: @climber
    end

    def destroy
        @climber = Climber.find params[:id]
        @climber.destroy
        render json: "#{@climber.name} deleted."
    end


end
