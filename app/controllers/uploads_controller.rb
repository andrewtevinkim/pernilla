class UploadsController < ApplicationController

  def upload

    # raise params.to_s

    @folder1 = params[:folder1].to_s

    if @folder1
      unless File.directory? Rails.public_path.to_s+"/"+@folder1
        Dir.mkdir(Rails.public_path.to_s + '/' + @folder1.to_s)
      end
      @folder2 = params[:folder2].to_s
      if @folder2
        unless File.directory? Rails.public_path.to_s+"/"+@folder1+"/"+@folder2
          Dir.mkdir(Rails.public_path.to_s + '/' + @folder1 + '/' + @folder2.to_s)
        end
        @folder3 = params[:folder3].to_s
        if @folder3
          unless File.directory? Rails.public_path.to_s+"/"+@folder1+"/"+@folder2+"/"+@folder3
            Dir.mkdir(Rails.public_path.to_s + '/' + @folder1 + '/' + @folder2 + '/'+ @folder3)
          end
          @folder4 = params[:folder4].to_s
          if @folder4
            unless File.directory? Rails.public_path.to_s+"/"+@folder1+"/"+@folder2+"/"+@folder3+"/"+@folder4
              Dir.mkdir(Rails.public_path.to_s + '/' + @folder1 + '/' + @folder2 + '/' + @folder3 + '/' + @folder4)
            end
          end
        end
      end
    end

    uploaded_io = params[:upload]
    File.open(Rails.root.join('public', @folder1, @folder2, @folder3, @folder4, uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    redirect_to send_mp3_path
  end

end
