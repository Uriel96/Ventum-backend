class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = Event.all
    response.headers['X-Total-Count'] = '10'
    response.headers['Access-Control-Allow-Headers'] = 'X-Total-Count'

    render json: @events, :include => :place
  end

  # GET /events/1
  def show
    render json: @event, :include => :place
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :time, :user_id, :place_id, :description, :poster, :max_capacity, :price, :contact, :areas, :tags)
    end
end
