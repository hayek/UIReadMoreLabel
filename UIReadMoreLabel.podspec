Pod::Spec.new do |s|
  s.name         = 'UIReadMoreLabel'
  s.version      = '1.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = 'https://github.com/hayek/UIReadMoreLabel'
  s.authors      = {'Amir Hayek' => 'free4sale@gmail.com'}
  s.summary      = 'An UILabel extention that supports customized truncation string'
  s.description      = <<-DESC
                       UIReadMoreLabel is an UILabel extention that supports truncation string for "read more" cases when the text is too large to fit the UILabel frame. UIReadMoreLabel supports dynamic font size and attributed string values.
                       DESC
# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  {:git => 'https://github.com/hayek/UIReadMoreLabel.git',
                    :tag => s.version.to_s}
  s.source_files = 'UIReadMoreLabel/UIReadMoreLabel.{h,m}'
  s.framework    =  'Foundation', 'CoreGraphics', 'UIKit'

  s.requires_arc = true
  
# Pod Dependencies

end