module ApplicationHelper

  # devise

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # dir

  def dirs(directory)
    Dir.glob(Rails.root.join(Rails.public_path, directory, "*")).select{|entry| File.directory? entry}.map{|filename| File.basename(filename)}
  end

  def mp3s(directory)
    Dir.glob(Rails.root.join(Rails.public_path, directory, "*.mp3")).map{|filename| File.basename(filename)}
  end

end
