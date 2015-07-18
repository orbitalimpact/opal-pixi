require 'opal/pixi/core/display/container'
require 'opal/pixi/core/math/point'

module PIXI
  class Sprite #< Container
    include PIXI::DisplayObject

    def initialize(native_or_texture)
      if native?(native_or_texture)
        super
      else
        super(`new PIXI.Sprite(#{native_or_texture.to_n})`)
      end
    end

  end
end
