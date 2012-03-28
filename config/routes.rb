TrainStationApp::Application.routes.draw do

  resources :stations


  # get "/stations" => "stations#index", :as => :stations
  # 
  # get "/stations/new" => 'stations#new', :as => :new_station
  # post "/stations" => 'stations#create'
  # 
  # get "/stations/:id" => 'stations#show', :as => :station
  # 
  # get "/stations/:id/edit" => 'stations#edit', :as => :edit_station
  # 
  # put "/stations/:id" => 'stations#update'
  # 
  # delete "/stations/:id" => 'stations#destroy'

end

# EXTRA CREDIT:
# Use a station ID that does not exist
# and try to explain the error you get!
#
# http://localhost:3000/stations/9999
#