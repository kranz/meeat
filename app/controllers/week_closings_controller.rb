class WeekClosingsController < ApplicationController
  # GET /week_closings
  # GET /week_closings.json
  def index
    @week_closings = WeekClosing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @week_closings }
    end
  end

  # GET /week_closings/1
  # GET /week_closings/1.json
  def show
    @week_closing = WeekClosing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @week_closing }
    end
  end

  # GET /week_closings/new
  # GET /week_closings/new.json
  def new
    @week_closing = WeekClosing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @week_closing }
    end
  end

  # GET /week_closings/1/edit
  def edit
    @week_closing = WeekClosing.find(params[:id])
  end

  # POST /week_closings
  # POST /week_closings.json
  def create
    @week_closing = WeekClosing.new(params[:week_closing])

    respond_to do |format|
      if @week_closing.save
        format.html { redirect_to @week_closing, notice: 'Week closing was successfully created.' }
        format.json { render json: @week_closing, status: :created, location: @week_closing }
      else
        format.html { render action: "new" }
        format.json { render json: @week_closing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /week_closings/1
  # PUT /week_closings/1.json
  def update
    @week_closing = WeekClosing.find(params[:id])

    respond_to do |format|
      if @week_closing.update_attributes(params[:week_closing])
        format.html { redirect_to @week_closing, notice: 'Week closing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @week_closing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /week_closings/1
  # DELETE /week_closings/1.json
  def destroy
    @week_closing = WeekClosing.find(params[:id])
    @week_closing.destroy

    respond_to do |format|
      format.html { redirect_to week_closings_url }
      format.json { head :no_content }
    end
  end
end
