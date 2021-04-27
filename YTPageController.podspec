Pod::Spec.new do |s|

    s.name = 'YTPageController'
    s.version = '1.1.7'
    s.license = { :type => 'MIT' }
    s.homepage = 'https://github.com/iWECon/YTPageController'
    s.authors = 'iWw'
    s.ios.deployment_target = '10.0'
    s.summary = 'YTPageController'
    s.source = { :git => 'https://github.com/iWECon/YTPageController.git', :tag => s.version }
    s.source_files = [
        'Sources/YTPageController/*.{h,m}',
    ]
    s.public_header_files = [
        'Sources/YTPageController/include/*.h'
    ]
    
    s.cocoapods_version = '>= 1.10.0'
    
end

