class MostonesController < ApplicationController
  # GET /mostones
  # GET /mostones.json
  def index
    @mostones = Mostone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mostones }
    end
  end

  # GET /mostones/1
  # GET /mostones/1.json
  def show
    @mostone = Mostone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mostone }
    end
  end

  # GET /mostones/new
  # GET /mostones/new.json
  def new
    @mostone = Mostone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mostone }
    end
  end

  # GET /mostones/1/edit
  def edit
    @mostone = Mostone.find(params[:id])
  end

  # POST /mostones
  # POST /mostones.json
  def create
    @mostone = Mostone.new(params[:mostone])

    respond_to do |format|
      if @mostone.save
        format.html { redirect_to @mostone, notice: 'Mostone was successfully created.' }
        format.json { render json: @mostone, status: :created, location: @mostone }
      else
        format.html { render action: "new" }
        format.json { render json: @mostone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mostones/1
  # PUT /mostones/1.json
  def update
    @mostone = Mostone.find(params[:id])

    respond_to do |format|
      if @mostone.update_attributes(params[:mostone])
        format.html { redirect_to @mostone, notice: 'Mostone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mostone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mostones/1
  # DELETE /mostones/1.json
  def destroy
    @mostone = Mostone.find(params[:id])
    @mostone.destroy

    respond_to do |format|
      format.html { redirect_to mostones_url }
      format.json { head :no_content }
    end
  end
end
