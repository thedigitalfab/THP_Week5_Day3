class HomeController < ApplicationController
    def index
        @list_gossips = Gossip.last(20)
        @list_gossips.each do |gossip|
            puts gossip.id
            puts gossip.title
            puts gossip.user.first_name
        end
    end

    def show
        puts params
        @first_name = params["id"]
        @list_gossips = Gossip.last(20)
        @list_gossips.each do |gossip|
            puts gossip.id
            puts gossip.title
            puts gossip.user.first_name
        end
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
