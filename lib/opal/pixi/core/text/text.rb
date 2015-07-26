require 'opal/pixi/core/sprites/sprite'

module PIXI
  class Text < PIXI::Sprite
    include Native
    
    def initialize(text_or_native, style={}, resolution=1)
      if native?(text_or_native)
        super(text_or_native)
      else
        super(`new PIXI.Text(text_or_native, #{style.to_n}, resolution)`)
      end
    end

    alias_native :canvas
    alias_native :context
    alias_native :resolution
    alias_native :text
    alias_native :text=
    alias_native :style
    alias_native :style=

    alias_native :render_webGL, :renderWebGL
    alias_native :getBounds, :getBounds
    alias_native :destroy

  end
end
