

Pod::Spec.new do |s|
	s.name         = "TCMLoader"
 	s.version      = "0.0.1"
  	s.summary      = "TCMLoader is used to show loading indicator"
	s.description  = "TCMLoader is used to show loading indicator"
	s.homepage     = "http://www.tacme.com"
	s.license      = "MIT"
	s.author       = { "npatel" => "npatel@tacme.com" }
	s.source       = { :git => "https://github.com/NSadava/TCMLoader.git", :tag => "0.0.1" }
	s.source_files  = "TCMLoader", "TCMLoader/**/*.{h,m,swift,xib}"

end
