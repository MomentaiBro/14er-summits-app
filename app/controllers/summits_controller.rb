class SummitsController < ApplicationController

    def index
        @summits = Summit.all
        @render json: @summits
    end

    def show
        @summit = Summit.find params[:id]
        @render json: @summit
    end

end
