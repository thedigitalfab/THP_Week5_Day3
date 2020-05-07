class HomeController < ApplicationController
    def index
        @list_gossips = Gossip.last(20)
    end

    def show
        @first_name = params["id"]
        @list_gossips = Gossip.last(20)
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
