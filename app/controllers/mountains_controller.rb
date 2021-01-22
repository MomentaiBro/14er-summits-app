class MountainsController < ApplicationController

    def index
        @mountains = Mountain.all
        render json: @mountains
    end

    def show
        @mountain = Mountain.find params[:id]
        render json: @mountain
    end

    def create
        @mountain = Mountain.create name: params[:name], elevation: params[:elevation], rank: params[:rank]
        render json: @mountain
    end

    def update
        @mountain = Mountain.find params[:id]
        @mountain.update name: params[:name], elevation: params[:elevation], rank: params[:rank]
        render json: @mountain
    end

    def destroy
        @mountain = Mountain.find params[:id]
        @mountain.destroy
        render json: "#{@mountain.name} deleted."
    end

end
