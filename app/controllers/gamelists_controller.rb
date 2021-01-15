class GamelistsController < ApplicationController
    def show
        @gamelist = Gamelist.find(params[:id])
    end

    def index
        @gamelists = Gamelist.all
    end

    def new
        @gamelist = Gamelist.new
    end

    def edit
        @gamelist = Gamelist.find(params[:id])
    end

    def create
        @gamelist = Gamelist.new(params.require(:gamelist).permit(:title, :description))
        
        if @gamelist.save
            flash[:notice] = "Game was recorded successfully."
            redirect_to @gamelist
        else
            render 'new'
        end
    end

    def update
        @gamelist = Gamelist.find(params[:id])
        if @gamelist.update(params.require(:gamelist).permit(:title, :description))
            flash[:notice] = "Game Details Updated Successfully!"
            redirect_to @gamelist
        else
            render 'edit'
        end
    end
end