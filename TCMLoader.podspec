

Pod::Spec.new do |s|


  s.name         = "TCMLoader"
  s.version      = "0.0.1"
  s.summary      = "TCMLoader is used to show loading indicator"

 s.description  = <<-DESC
  A much much longer description of TCMLoader.
                   DESC

  s.homepage     = "http://www.tacme.com"


  s.license      = "MIT"


  s.author             = { "npatel" => "npatel@tacme.com" }

s.source       = { :git => "https://github.com/NSadava/TCMLoader.git", :tag => "0.0.1" }

  s.source_files  = "LoadingFramework", "LoadingFramework/**/*.{h,m,swift,xib}"




end
