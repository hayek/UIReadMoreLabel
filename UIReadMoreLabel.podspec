Pod::Spec.new do |s|
  s.name         = 'UIReadMoreLabel'
  s.version      = '1.1'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/hayek/UIReadMoreLabel'
  s.authors      =  'Amir Hayek' => 'free4sale@gmail.com'
  s.summary      = 'UIReadMoreLabel is an UILabel extention that supports truncation string for "read more" cases when the text is too large to fit the UILabel frame.'

# Source Info
  s.platform     =  :ios, '7.1'
  s.source       =  :git => 'git://github.com/hayek/UIReadMoreLabel.git', 
                    :tag => 'v1.1'
  s.source_files = 'UIReadMoreLabel.h,m'
  s.framework    =  'CoreGraphics'

  s.requires_arc = true
  
# Pod Dependencies

end