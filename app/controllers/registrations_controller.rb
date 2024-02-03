class RegistrationsController < Devise::RegistrationsController

  def create

    super do |resource|
      # Your custom logic here
      resource.name = params[:user][:name]
      resource.save
    end
  end

end
