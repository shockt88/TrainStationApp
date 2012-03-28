class StationsController < ApplicationController

  def index
    @all_stations = Station.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @all_stations }
    end
  end

  def destroy
    @station = Station.find_by_id(params[:id])
    @station.destroy
    redirect_to stations_url
  end
  
  def edit
    @station = Station.find_by_id(params[:id])
  end
  
  def update
    @station = Station.find_by_id(params[:id])
    @station.update_attributes(params[:station])
    redirect_to station_url(@station.id)
  end
  
  def show
    the_station_id = params[:id]
    @the_station = Station.find_by_id(the_station_id)
  end

  def new
    @station = Station.new
  end
  
    # Parameters: {"utf8"=>"✓", "authenticity_token"=>"xde+MTukkfgUQ88K+nyoxU2pA58u8dFAzLkKeAukhF8=", "station"=>{"name"=>"Randolph St."}, "commit"=>"Create Station"}

  def create
    x = Station.new
    x.name = params[:station][:name]
    x.save
    redirect_to stations_url
  end
end

# form_data = params[:station] # => {"name"=>"Randolph St."}
# x.name = form_data[:name]
# Station.create params[:station]







