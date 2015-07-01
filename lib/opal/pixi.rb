if RUBY_ENGINE == 'opal'
  require 'opal/pixi/setup'

else
  require 'opal'
  require 'opal/pixi/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
