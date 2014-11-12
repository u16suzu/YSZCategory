Pod::Spec.new do |s|
  s.name         = "YSZCategory"
  s.version      = "0.0.4"
  s.summary      = "Categories."

  s.description  = <<-DESC
                   A longer description of YSZCategory in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://d.hatena/u16s"
  s.license      = "MIT"

  s.author             = { "u16suzu" => "u16suzu@gmail.com" }
  s.social_media_url   = "http://twitter.com/u16suzu"

  s.source       = { :git => "https://github.com/u16suzu/YSZCategory.git", :tag => "0.0.4" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"

end
