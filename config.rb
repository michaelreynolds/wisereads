# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

#Deploy
activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  # deploy.branch   = 'test' # default: gh-pages
  # deploy.branch   = 'master' # default: gh-pages
  deploy.build_before = true # default: false
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  deploy.commit_message = 'middleman auto deploy'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end

configure Goodreads

  # https://github.com/sosedoff/goodreads
  # require 'goodreads'
  #KEY = "p5qrzhENwZGbhMZ5izXULA"
  #SECRET = "3SQk5lr33MJsI9HDwfYx9eTBe0xXgQQdlpEOOw7wP2A"

  client = Goodreads.new(api_key: "p5qrzhENwZGbhMZ5izXULA") # short version
  #client = Goodreads::Client.new(api_key: "KEY", api_secret: "SECRET")
  #Goodreads.configuration => { api_key: "p5qrzhENwZGbhMZ5izXULA"}
end
