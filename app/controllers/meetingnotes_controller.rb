class MeetingnotesController < ApplicationController
    
    def show
        @meetingnote = Meetingnote.find(params[:id])
    end

    def index
        @meetingnotes = Meetingnote.all 
    end

    def new
        @meetingnote = Meetingnote.new 
    end

    def edit
        @meetingnote = Meetingnote.find(params[:id])
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
        @meetingnote = Meetingnote.find(params[:id])
        if @meetingnote.update(params.require(:meetingnote).permit(:description))
            flash[:notice] = "Notes were updated successfully."
            redirect_to @meetingnote
        else
            render 'edit'
        end             
    end


end