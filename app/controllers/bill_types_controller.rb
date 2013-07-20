class BillTypesController < ApplicationController

   before_filter :authenticate_user!
   
  # GET /bill_types
  # GET /bill_types.json
  def index
    @bill_types = BillType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_types }
    end
  end

  # GET /bill_types/1
  # GET /bill_types/1.json
  def show
    @bill_type = BillType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_type }
    end
  end

  # GET /bill_types/new
  # GET /bill_types/new.json
  def new
    @bill_type = BillType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_type }
    end
  end

  # GET /bill_types/1/edit
  def edit
    @bill_type = BillType.find(params[:id])
  end

  # POST /bill_types
  # POST /bill_types.json
  def create
    @bill_type = BillType.new(params[:bill_type])

    respond_to do |format|
      if @bill_type.save
        format.html { redirect_to @bill_type, notice: 'Bill type was successfully created.' }
        format.json { render json: @bill_type, status: :created, location: @bill_type }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_types/1
  # PUT /bill_types/1.json
  def update
    @bill_type = BillType.find(params[:id])

    respond_to do |format|
      if @bill_type.update_attributes(params[:bill_type])
        format.html { redirect_to @bill_type, notice: 'Bill type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_types/1
  # DELETE /bill_types/1.json
  def destroy
    @bill_type = BillType.find(params[:id])
    @bill_type.destroy

    respond_to do |format|
      format.html { redirect_to bill_types_url }
      format.json { head :ok }
    end
  end
end
