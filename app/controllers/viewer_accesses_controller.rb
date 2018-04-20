class ViewerAccessesController < ApplicationController
  before_action :set_viewer_access, only: [:show, :edit, :update, :destroy]

  # GET /viewer_accesses
  # GET /viewer_accesses.json
  def index
    @viewer_accesses = ViewerAccess.all
  end

  # GET /viewer_accesses/1
  # GET /viewer_accesses/1.json
  def show
    @viewer_accesses = ViewerAccess.where("profile_id = ?", params[:id])

  end

  # GET /viewer_accesses/new
  def new
    @viewer_access = ViewerAccess.new()
  end

  # GET /viewer_accesses/1/edit
  def edit
  end

  # POST /viewer_accesses
  # POST /viewer_accesses.json
  def create
    @viewer_access = ViewerAccess.new(viewer_access_params)
    puts "SHIT WAS MADE"
    respond_to do |format|
      if @viewer_access.save
        puts "SHIT REAAALY MADE"
        format.html { redirect_to @profile, notice: 'Viewer access was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else

        format.html { render :new }
        format.json { render json: @viewer_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewer_accesses/1
  # PATCH/PUT /viewer_accesses/1.json
  def update
    #authorize! :access_given, @profile if params[:profile][:access_given]

    respond_to do |format|
      if @viewer_access.update(viewer_access_params)
        format.html { redirect_to @viewer_access, notice: 'Viewer access was successfully updated.' }
        format.json { render :show, status: :ok, location: @viewer_access }
      else
        format.html { render :edit }
        format.json { render json: @viewer_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewer_accesses/1
  # DELETE /viewer_accesses/1.json
  def destroy
    @viewer_access.destroy
    respond_to do |format|
      format.html { redirect_to viewer_accesses_url, notice: 'Viewer access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewer_access
      @viewer_access = ViewerAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewer_access_params
      params.fetch(:viewer_access, {})
    end
    def viewer_access_params2
      params.require(:profile).permit(:access_given)
    end
end
