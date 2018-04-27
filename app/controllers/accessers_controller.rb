class AccessersController < ApplicationController
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
  end 

  def destroy
  end



  private

    def accesser_params
      params.require(:accesser).permit(:access_granted, :viewable_profile, :viewing_id, :profile_id)
    end
end
