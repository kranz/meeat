class ClosingDaysController < ApplicationController
  # GET /closing_days
  # GET /closing_days.json
  def index
    @closing_days = ClosingDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @closing_days }
    end
  end

  # GET /closing_days/1
  # GET /closing_days/1.json
  def show
    @closing_day = ClosingDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @closing_day }
    end
  end

  # GET /closing_days/new
  # GET /closing_days/new.json
  def new
    @closing_day = ClosingDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @closing_day }
    end
  end

  # GET /closing_days/1/edit
  def edit
    @closing_day = ClosingDay.find(params[:id])
  end

  # POST /closing_days
  # POST /closing_days.json
  def create
    @closing_day = ClosingDay.new(params[:closing_day])

    respond_to do |format|
      if @closing_day.save
        format.html { redirect_to @closing_day, notice: 'Closing day was successfully created.' }
        format.json { render json: @closing_day, status: :created, location: @closing_day }
      else
        format.html { render action: "new" }
        format.json { render json: @closing_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /closing_days/1
  # PUT /closing_days/1.json
  def update
    @closing_day = ClosingDay.find(params[:id])

    respond_to do |format|
      if @closing_day.update_attributes(params[:closing_day])
        format.html { redirect_to @closing_day, notice: 'Closing day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @closing_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closing_days/1
  # DELETE /closing_days/1.json
  def destroy
    @closing_day = ClosingDay.find(params[:id])
    @closing_day.destroy

    respond_to do |format|
      format.html { redirect_to closing_days_url }
      format.json { head :no_content }
    end
  end
end
