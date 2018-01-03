class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Event created successfully!"
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = User.find(params[:id])
    if @event.update_attributes(event_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def index
    @events = Event.all
  end

  private

    def event_params
      params.require(:event).permit(:title, :description, :date_time,
                                   :address, :price, :photo, :website)
    end
end
