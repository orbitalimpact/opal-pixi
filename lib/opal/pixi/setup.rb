# We need the Opal Native support library here:
require 'native'

# These requires must be loaded in order of dependency:
require 'opal/pixi/core/files'
require 'opal/pixi/extras/movie_clip'
require 'opal/pixi/extras/tiling_sprite'
require 'opal/pixi/interaction/interactive_target'

# TODO: This is odd here as it doesn't fit the files.rb require pattern... how can we clean this up?
#require 'opal/pixi/core/game'
