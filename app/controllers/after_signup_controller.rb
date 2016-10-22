class AfterSignupController < ApplicationController
  include Wicked::Wizard

  before_action :authenticate_user!

  steps :welcome, :link_line, :confirm_profile, :find_friends

  def show
    @user = current_user

    render_wizard
  end
end
