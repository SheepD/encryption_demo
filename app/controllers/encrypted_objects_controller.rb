class EncryptedObjectsController < ApplicationController
  before_action :set_encrypted_object, only: [:show, :edit, :update, :destroy]

  # GET /encrypted_objects
  # GET /encrypted_objects.json
  def index
    @encrypted_objects = EncryptedObject.all
  end

  # GET /encrypted_objects/1
  # GET /encrypted_objects/1.json
  def show
  end

  # GET /encrypted_objects/new
  def new
    @encrypted_object = EncryptedObject.new
  end

  # GET /encrypted_objects/1/edit
  def edit
  end

  # POST /encrypted_objects
  # POST /encrypted_objects.json
  def create
    @encrypted_object = EncryptedObject.new(encrypted_object_params)

    respond_to do |format|
      if @encrypted_object.save
        format.html { redirect_to @encrypted_object, notice: 'Encrypted object was successfully created.' }
        format.json { render :show, status: :created, location: @encrypted_object }
      else
        format.html { render :new }
        format.json { render json: @encrypted_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encrypted_objects/1
  # PATCH/PUT /encrypted_objects/1.json
  def update
    respond_to do |format|
      if @encrypted_object.update(encrypted_object_params)
        format.html { redirect_to @encrypted_object, notice: 'Encrypted object was successfully updated.' }
        format.json { render :show, status: :ok, location: @encrypted_object }
      else
        format.html { render :edit }
        format.json { render json: @encrypted_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encrypted_objects/1
  # DELETE /encrypted_objects/1.json
  def destroy
    @encrypted_object.destroy
    respond_to do |format|
      format.html { redirect_to encrypted_objects_url, notice: 'Encrypted object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encrypted_object
      @encrypted_object = EncryptedObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encrypted_object_params
      params.require(:encrypted_object).permit(:secret_stuff, :secret_stuff2, :tell_this_to_the_world)
    end
end
