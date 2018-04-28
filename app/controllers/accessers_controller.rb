class AccessersController < ApplicationController
  def index
    @accesser = Accesser.all
    #provide ALL the reivew "objects"
  end
  def create
    @profile = Profile.find(params[:profile_id])
    puts "PROFILE TO BE ALLOWED:"
    @accesser = @profile.accessers.build(accesser_params)
    puts "access built"
    @accesser.viewable_profile = current_user.id
    @accesser.viewing_id = @profile.user_id
    puts "viewing id"
    puts @accesser.viewing_id
    puts @accesser.viewable_profile
    if @accesser.save!
      redirect_to @profile, notice: "saved access"
    else
      redirect_to @profile, notice: "did not save access"
    end
  end

  def update
  respond_to do |format|
    if @accesser.update(accesser_params)
      format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
      format.json { render :show, status: :ok, location: @profile }
    else
      format.html { render :edit }
      format.json { render json: @profile.errors, status: :unprocessable_entity }
    end
  end
end
  # def update
  # end
  #
  # def update
  #   @accesser = Accesser.find(params[:id])
  #
  #   if @accesser.update(accesser_params)
  #     redirect_to @profile
  #   else
  #     render 'edit'
  #   end
  # # end
  #
  # def update
  #   #authorize! :access_given, @profile if params[:profile][:access_given]
  #
  #   respond_to do |format|
  #     if @accesser.update(accesser_params)
  #       format.html { redirect_to @accesser, notice: 'Viewer access was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @accesser }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @accesser.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
  @accesser = Accesser.find(params[:id])
  @accesser.destroy
  redirect_to @profile, notice: "deleted"
  end

  def show
    @accesser = Accesser.where("profile_id = ?", params[:id])
  end


  private

    def accesser_params
      params.require(:accesser).permit(:access_granted, :viewable_profile, :viewing_id, :profile_id)
    end
end
