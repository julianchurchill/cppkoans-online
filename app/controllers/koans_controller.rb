class KoansController < ApplicationController
  # GET /koans
  # GET /koans.json
  def index
    @koans = Koan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @koans }
    end
  end

  # GET /koans/1
  # GET /koans/1.json
  def show
    @koan = Koan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @koan }
    end
  end

  # GET /koans/new
  # GET /koans/new.json
  def new
    @koan = Koan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @koan }
    end
  end

  # GET /koans/1/edit
  def edit
    @koan = Koan.find(params[:id])
  end

  # POST /koans
  # POST /koans.json
  def create
    @koan = Koan.new(params[:koan])

    respond_to do |format|
      if @koan.save
        format.html { redirect_to @koan, notice: 'Koan was successfully created.' }
        format.json { render json: @koan, status: :created, location: @koan }
      else
        format.html { render action: "new" }
        format.json { render json: @koan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /koans/1
  # PUT /koans/1.json
  def update
    @koan = Koan.find(params[:id])

    respond_to do |format|
      if @koan.update_attributes(params[:koan])
        format.html { redirect_to @koan, notice: 'Koan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @koan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /koans/1
  # DELETE /koans/1.json
  def destroy
    @koan = Koan.find(params[:id])
    @koan.destroy

    respond_to do |format|
      format.html { redirect_to koans_url }
      format.json { head :no_content }
    end
  end
end
