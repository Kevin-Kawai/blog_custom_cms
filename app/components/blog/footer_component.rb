class Blog::FooterComponent < ApplicationComponent
  def initialize; end

  def self.template
    <<~'erb'
    <div>
      I am the footer
    </div>
    erb
  end
end