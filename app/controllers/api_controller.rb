class ApiController < ApplicationController

  def index
    @mp3_array = Dir.glob(Rails.root.join("public", "*.mp3")).map do |filename|
      File.basename(filename)
    end
    
    # raise (Rails.public_path.to_s+"/another_dir").to_s

    @hash_test = {
      "hello1" => "blah1",
      "hello2" => "blah2",
      "hello3" => {
        "hi1" => "fu1",
        "hi2" => "fu2"
      }
    }

    respond_to do |format|
      format.html { render :js }
      format.js
    end
  end

  # private

    # def dirs(directory)
    #   Dir.new(directory).select{|entry| File.directory? entry}.reject{|entry| entry == "." || entry == ".."}.to_s
    # end

end
