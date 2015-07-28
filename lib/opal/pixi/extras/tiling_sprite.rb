require 'opal/pixi/core/sprites/sprite'
require 'opal/pixi/core/math/point'

module PIXI::Extras
  class TilingSprite < PIXI::Sprite
    include Native

    def initialize(texture, width, height)
      super(`new PIXI.extras.TilingSprite(#{texture.to_n},#{width},#{height})`)
    end

    alias_native :tile_scale, :tileScale, as: Point
    alias_native :tile_scale=, :tileScale=
    alias_native :tile_position, :tilePosition, as: Point
    alias_native :tile_position=, :tilePosition=

  end
end
