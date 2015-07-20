require 'opal/pixi/core/display/container'
require 'opal/pixi/core/math/point'
require 'opal/pixi/core/textures/texture'
require 'opal/pixi/interaction/interactive_target'

module PIXI
  class Sprite #< Container
    include Native
    include PIXI::DisplayObject
    include PIXI::InteractiveTarget

    def self.from_image(name)
      new(`PIXI.Sprite.fromImage(name)`)
    end

    def initialize(native_or_texture)
      if native?(native_or_texture)
        super
      else
        super(`new PIXI.Sprite(#{native_or_texture.to_n})`)
      end
    end

    alias_native :anchor, :anchor, as: Point
    alias_native :anchor=
    alias_native :tint
    alias_native :tint=
    alias_native :blend_mode, :blendMode
    alias_native :blend_mode=
    alias_native :shader
    alias_native :shader=
    alias_native :cached_tint, :cachedTint
    alias_native :cached_tint=
    alias_native :texture, :texture, as: Texture
    alias_native :texture=

    alias_native :width
    alias_native :width=
    alias_native :height
    alias_native :height=

  end
end
