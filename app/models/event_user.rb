class EventUser < ApplicationRecord
  belongs_to :event,polymorphic: true, optional: true
  belongs_to :user,polymorphic: true, optional: true
end
