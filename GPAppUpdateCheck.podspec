

Pod::Spec.new do |s|


  s.name         = "GPAppUpdateCheck"
  s.version      = "1.0.0"
  s.summary      = "Remind users to update App."
  s.description  = <<-DESC
                   		If app has a significant bug, it blocks users from entering the old version.
                   DESC
  s.homepage     = "https://github.com/Gorpeln/GPAppUpdateCheck"
  s.license      = "MIT"
  s.author       = { "Gorpeln" => "33964471@qq.com" }
  s.source       = { :git => "https://github.com/Gorpeln/GPAppUpdateCheck.git", :tag => s.version.to_s }
  s.source_files  = "GPAppUpdateCheck", "GPAppUpdateCheck/*.{h,m}"
  s.social_media_url   = "https://github.com/Gorpeln"
  s.platform     = :ios

end


