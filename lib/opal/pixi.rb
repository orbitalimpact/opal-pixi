if RUBY_ENGINE == 'opal'
  require 'native'
  require 'opal/pixi/container'
  require 'opal/pixi/graphics'
  require 'opal/pixi/web_gl_renderer'
  require 'opal/pixi/sprite'
  require 'opal/pixi/text'
  require 'opal/pixi/point'
  require 'opal/pixi/texture'
else
  require 'opal'
  require 'opal/pixi/version'

  Opal.append_path File.expand_path('../..', __FILE__).untaint
end
