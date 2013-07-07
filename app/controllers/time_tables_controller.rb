class TimeTablesController < ApplicationController
  before_filter :find_restaurant
  # GET /time_tables
  # GET /time_tables.json
  def index
    @time_tables = TimeTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_tables }
    end
  end

  # GET /time_tables/1
  # GET /time_tables/1.json
  def show
    @time_table = TimeTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_table }
    end
  end

  # GET /time_tables/new
  # GET /time_tables/new.json
  def new
    @time_table = TimeTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_table }
    end
  end

  # GET /time_tables/1/edit
  def edit
    @time_table = TimeTable.find(params[:id])
  end

  # POST /time_tables
  # POST /time_tables.json
  def create
    @time_table = TimeTable.new(params[:time_table])

    respond_to do |format|
      if @restaurant.time_tables << @time_table
        format.html { redirect_to edit_restaurant_url(@restaurant), notice: 'Time table was successfully created.' }
        format.json { render json: @time_table, status: :created, location: @time_table }
      else
        format.html { render action: "new" }
        format.json { render json: @time_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_tables/1
  # PUT /time_tables/1.json
  def update
    @time_table = @restaurant.time_tables.find(params[:id])

    respond_to do |format|
      if @time_table.update_attributes(params[:time_table])
        format.html { redirect_to edit_restaurant_url(@restaurant), notice: 'Time table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_tables/1
  # DELETE /time_tables/1.json
  def destroy
    @time_table = @restaurant.time_tables.find(params[:id])
    @restaurant.time_tables.destroy(@time_table)

    respond_to do |format|
      format.html { redirect_to edit_restaurant_url(@restaurant) }
      format.json { head :no_content }
    end
  end

private
  def find_restaurant
    @restaurant_id = params[:restaurant_id]
    redirect_to restaurants_url unless @restaurant_id
    @restaurant = Restaurant.find(@restaurant_id)
  end
end
