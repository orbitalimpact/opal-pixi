require 'opal/pixi/core/math/point'

module PIXI
  class Sprite
    include Native

    def initialize(arg_hash = {}, &block)
      @native = %x{
        new PIXI.Sprite()
      }
    end

    alias_native :anchor,      :anchor,     as: Point
    alias_native :position,    :position,   as: Point

  end
end
