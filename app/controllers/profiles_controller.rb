class ProfilesController < ApplicationController
  load_and_authorize_resource
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    if params[:search]
      @profiles = Profile.search(params[:search])
    else
      @profiles = Profile.all
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @reviews = Review.where("profile_id = ?", params[:id])
    #@accessers = Accesser.where("profile_id = ?", params[:id])
  end

  # GET /profiles/new
  def new
    @profile = current_user.build_profile
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = current_user.build_profile(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update


    profile = Profile.find(params[:id]) #gets profile id
    puts "this is"
    puts profile.user_id
    puts profile.id

    #user = User.find(params[:id])
    puts "curr user"
    puts current_user.id
    puts "checked"
    #
    # if profile.id != current_user.id
    #   puts "hello there"
    #   #authorize! :allow_access, @profile if params[:profile][:allow_access] end
    #   puts "authorized"
    #   respond_to do |format|
    #     if @profile.update(profile_param2)
    #       format.html { redirect_to(@profile) and return, notice: 'Profile was successfully updated.' }
    #       format.json { render :show, status: :ok, location: @profile }
    #     end
    #   end
    # end

    #need a way to find the right profile
    # @profile = Profile.find(11)
    #in the future, ideal that the profile id and user id same
    @profile = Profile.find(params[:id])
    # userId = @profile.user_id
    # lord = current_user
    # # @viewer = Viewer.new(params[:id])
    # # #access to me for user of current page
    # # Viewer.create(pageAccess: true, profile: lord, user: userId)
    #
    # @profile = Profile.find(lord)
    respond_to do |format|
      if @profile.update(profile_param2)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.fetch(:profile, {})
    end
    def profile_param2
      params.require(:profile).permit(:access_allowed)
    end
end
