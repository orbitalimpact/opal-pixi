# These requires must be loaded in order of dependency:
# TODO: look into why `puts File.dirname(__FILE__)` is not working for Opal

require 'opal/pixi/core/display/container'
require 'opal/pixi/core/display/display_object'
require 'opal/pixi/core/renderers/webgl/filters/abstract_filter'
require 'opal/pixi/core/renderers/webgl/webgl_renderer'
#require 'opal/pixi/core/renderers/system_renderer'
require 'opal/pixi/core/graphics/graphics'
# require 'opal/pixi/core/math'
# require 'opal/pixi/core/particles'
# require 'opal/pixi/core/renderers'
require 'opal/pixi/core/sprites/sprite'
require 'opal/pixi/core/text/text'
require 'opal/pixi/core/textures/texture'
require 'opal/pixi/core/textures/render_texture'
# require 'opal/pixi/core/ticker'
# require 'opal/pixi/core/utils'
