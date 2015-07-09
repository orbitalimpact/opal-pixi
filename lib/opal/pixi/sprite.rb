require 'opal/pixi/point'
require 'pp'

module PIXI
  class Sprite
    include Native

    def initialize(native_or_texture)
      if native?(native_or_texture)
        super
      else
        super `new PIXI.Sprite(#{native_or_texture.to_n})`
      end
    end


    alias_native :anchor, :anchor, as: Point
    alias_native :rotation
    alias_native :interactive=
    alias_native :position, :position, as: Point
    alias_native :on
    alias_native :anchor=
    alias_native :position=
    alias_native :rotation=

  end
end
