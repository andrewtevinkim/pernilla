class StaticPagesController < ApplicationController

  def send_mp3
    if !user_signed_in? || !current_user.admin?
      raise "Go away, you evil villain!"
    end
  end

end
