json.(@restaurant, :id, :name)
json.reservations @restaurant.reservations, :id, :party_size