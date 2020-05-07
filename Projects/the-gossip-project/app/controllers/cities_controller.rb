class CitiesController < ApplicationController
    def index
    end

    def show
        @city = City.find(params["id"])
        @list_gossips = Gossip.where(user: User.where(city: @city.id))
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
