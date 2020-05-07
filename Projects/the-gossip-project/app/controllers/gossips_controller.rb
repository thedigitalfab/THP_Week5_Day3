class GossipsController < ApplicationController
    def index
        @list_gossips = Gossip.last(20)
    end

    def show
        @gossip = Gossip.find(params["id"])
    end

    def new
        @gossip = Gossip.new()
    end

    def create
        @gossip = Gossip.create(title: params[:title], content: params[:content], user: User.find(params[:user]))
        if @gossip.save
            # redirect_to(:root, notice: "Gossip successfully created!")
            redirect_to gossips_path
        else
            render '/gossips/new.html.erb'
        end
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        if @gossip.update(title: params[:title],content: params[:content])
            redirect_to @gossip
        else
            render :edit
        end
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        if @gossip.delete
            redirect_to root_path
        end
    end
end
