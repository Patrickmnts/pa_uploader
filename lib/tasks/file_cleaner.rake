namespace :clean do

  desc "Delete all files older than 72 hours"
  task expired_files: :environment do
    Upload.where('created_at <= ?', Time.now - 3.days).destroy_all
    if Upload.all.empty?
      puts "Files have been destroyed"
    end
  end

  desc "Delete all user uploaded files"
  task all: :environment do
    Upload.destroy_all
  end

end
