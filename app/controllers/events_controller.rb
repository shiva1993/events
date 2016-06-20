class EventsController < ApplicationController
  
  before_action :set_event, only: [:attend, :unattend]
  before_action :authenticate_user!, only: [:attend, :unattend]

  def index
  	@events = Event.all
  end

  def show
    @event = Event.includes(:users).find(params[:id])
  end

  def attend
    EventsUsers.create(user_id: current_user.id, event_id: @event.id)
    redirect_to :back
  end

  def unattend
    @event.users.delete(current_user)
    redirect_to :back
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end
end
