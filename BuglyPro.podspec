Pod::Spec.new do |s|
  s.authors      = "Tencent"
  s.name         = "BuglyProOverSea"
  s.version      = "2.7.51.2"
  s.summary      = "BuglyProOverSea iOS SDK"
  s.description  = "iOS library for Bugly Service. Sign up for a service at https://bugly.tds.tencent.com."
  s.homepage     = "http://bugly.tds.tencent.com/"
  s.license      = { :type => "Commercial", :text => "Copyright (C) 2024 Tencent Bugly, Inc. All rights reserved."}
  s.author       = { "Tencent" => "bugly@tencent.com" }
  s.source       = { :http => "https://buglyprooverseacocoapodssdk-75649.gzc.vod.tencent-cloud.com/BuglyProOverSea-2.7.51.2.zip" }
  s.requires_arc = true  
  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks ='BuglyProOversea.xcframework'
  s.frameworks = 'SystemConfiguration','Security'
  s.library = 'z','c++'
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (C) 2024 Tencent Bugly, Inc. All rights reserved.
      LICENSE
  }
  end
