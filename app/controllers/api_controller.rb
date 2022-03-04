class ApiController < ApplicationController

  protect_from_forgery except: :index

  def index
    @mp3_array = Dir.glob(Rails.root.join("public", "*.mp3")).map do |filename|
    File.basename(filename)
  end

  respond_to do |format|
    format.html { render :js }
    format.js
  end
end

end
