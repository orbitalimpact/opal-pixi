require './base'

module PIXI
  class Sprite < PIXI::DisplayObject
    include Native


    alias_native :anchor, :anchor, as: Point
    alias_native :rotation
    alias_native :interactive=
    alias_native :position, :position, as: Point
    alias_native :on
    alias_native :anchor=
    alias_native :position=
    alias_native :rotation=
    
    alias_native :x
    alias_native :y
    alias_native :x=
    alias_native :y=
    alias_native :z
    alias_native :z=
    
    alias_native :height
    alias_native :width
    
    alias_native :scale
    alias_native :visible=
    
    alias_native :kill
    alias_native :destroy
    
    alias_native :load_texture, :loadTexture
    
    def crop(rect)
      `#@native.crop(#{rect.to_n})`
    end
    
    def smoothed=(bool)
      `#@native.smoothed = bool`
    end

    %x{
      self._proto = window.PIXI.Sprite.prototype, def = self._proto;
              window.PIXI.Sprite.prototype._klass = self;
    }

    def self.new(texture)
      `new window.PIXI.Sprite(texture)`
    end

  end
end
