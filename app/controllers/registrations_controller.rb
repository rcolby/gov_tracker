class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    # add custom create logic here
    # resource.get_reps(params[:user][:zip])
  end

  def update
    super
  end
end 