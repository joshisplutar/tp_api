class RouteLocation < ApplicationRecord
  belongs_to :location
  belongs_to :route
end
