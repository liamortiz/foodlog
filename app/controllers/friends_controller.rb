class FriendsController < ApplicationController
    def index
        @friends = Friend.all
    end
    
    def show
        @friend = Friend.find(params[:id])
    end

    def edit
    end
    
    def new
    end

    def create
    end

    def update
    end

    def destroy
    end
end
