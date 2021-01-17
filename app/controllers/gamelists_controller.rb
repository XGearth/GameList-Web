class GamelistsController < ApplicationController

before_action :set_gamelist, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @gamelists = Gamelist.all
    end

    def new
        @gamelist = Gamelist.new
    end

    def edit
    end

    def create
        @gamelist = Gamelist.new(define_params)
        
        if @gamelist.save
            flash[:notice] = "Game was recorded successfully."
            redirect_to @gamelist
        else
            render 'new'
        end
    end

    def update
        if @gamelist.update(define_params)
            flash[:notice] = "Game Details Updated Successfully!"
            redirect_to @gamelist
        else
            render 'edit'
        end
    end

    def destroy
        @gamelist.destroy
        redirect_to gamelists_path
    end
end

private

def set_gamelist
    @gamelist = Gamelist.find(params[:id])
end

def define_params
    params.require(:gamelist).permit(:title, :description)
end