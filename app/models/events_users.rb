class EventsUsers < ActiveRecord::Base

  validates_uniqueness_of :user_id, scope: :event_id, message: "already attended"
end
