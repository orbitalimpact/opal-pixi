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

    def on(event, &handler)
      `#@native.on(#{event}, #{handler.to_n})`
    end

    def anchor=(a)
      `#@native.anchor = #{a.to_n}`
    end

    def position=(p)
      `#@native.position = #{p.to_n}`
    end

    def rotation=(r)
      `#@native.rotation = #{r.to_n}`
    end
  end
end
