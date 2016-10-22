class AfterSignupController < ApplicationController
  include Wicked::Wizard

  before_action :authenticate_user!

  steps :link_line, :confirm_profile, :find_friends

  def show
    @user = current_user

    render_wizard
  end

  def update
    @user = current_user
    @user.update user_params

    render_wizard @user
  end

  private

    def user_params
      params.require(:user).permit(:line_token, :name)
    end
end
