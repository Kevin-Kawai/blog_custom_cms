class Blog::HeaderComponent < ApplicationComponent
  def initialize(user)
    @user = user
  end

  def self.template
    <<~'erb'
    <header>
      <div>
        <ul>
          <li>Home</li>
          <li>Blog</li>
          <li>About</li>
          <%- if user %>
            <li>View Account</li>
            <li>Log Out</li>
          <% else %>
            <li>Log In</li>
            <li>Create Account</li>
          <% end %>
        </ul>
      </div>
    </header>
    erb
  end

  private

  attr_reader :user
end