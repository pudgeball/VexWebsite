class EventsController < ApplicationController
  before_filter :authenticate_user!, only: [:signup, :create_signup]
  
  # GET /events
  # GET /events.json
  def index
    @events = Event.where("time >= ?", Time.now).all
    
    @page_title = "Events"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    
    @page_title = @event.name

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    @event.time = Time.now
    
    @page_title = "New Event"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    
    @page_title = "Update Event"
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
  
  # GET /events/signup/1
  def signup
    @event = Event.find(params[:id])
    
    @page_title = "Sign Up"
    
    respond_to do |format|
      format.html
    end
  end
  
  # POST /events/signup/1
  def create_signup
    @test = params
    @params = params[:signup]
    @event = Event.find(params[:id])
    
    @params.each do |check|
      @team = Team.find(check[0])
      if (check[1].eql? "1")
        if (EventAttendee.where("team_id = ? AND event_id = ?", @team.id, @event.id).count == 0)
          @eventattendee = EventAttendee.new(team_id: @team.id, event_id: @event.id)
          @eventattendee.save
        end
      elsif (check[1].eql? "0")
        if (EventAttendee.where("team_id = ? AND event_id = ?", @team.id, @event.id).count == 1)
          @eventattendee = EventAttendee.where("team_id = ? AND event_id = ?", @team.id, @event.id).first
          @eventattendee.destroy
        end
      end
    end
      
    respond_to do |format|
      format.html { redirect_to @event }
    end
  end
end
