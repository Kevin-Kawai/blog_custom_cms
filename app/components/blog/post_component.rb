class Blog::PostComponent < ApplicationComponent
  validates :content, presence: true

  def initialize(title:, color:, hello_world:)
    @title = title
    @color = color
    @hello_world = hello_world
  end

  def self.template
    <<~'erb'
    <div style="color: <%= color %>">
      <%- if hello_world %>
        <div>Hello World</div>
      <% end %>
      <%= content %>
    </div>
    erb
  end

  private

  attr_reader :content, :title, :color, :hello_world
end