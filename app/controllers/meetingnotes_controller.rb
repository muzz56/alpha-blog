class MeetingnotesController < ApplicationController
    before_action :set_meetingnote, only: [:show, :edit, :update, :destroy]


    def show
    end

    def index
        @meetingnotes = Meetingnote.all 
    end

    def new
        @meetingnote = Meetingnote.new 
    end

    def edit
    end


    def create
        @meetingnote = Meetingnote.new(params.require(:notes).permit(:description))
        if @meetingnote.save
            flash[:notice] = "Saved Successfully"
            redirect_to @meetingnote 
        else
            render 'new'
        end         
    end

    def update
        if @meetingnote.update(params.require(:meetingnote).permit(:description))
            flash[:notice] = "Notes were updated successfully."
            redirect_to @meetingnote
        else
            render 'edit'
        end             
    end

    def destroy
        @meetingnote.destroy
        redirect_to meetingnotes_path
    end
    
    private
    def set_meetingnote
        @meetingnote = Meetingnote.find(params[:id])
    end


end