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

    %x{
      self._proto = window.PIXI.Sprite.prototype, def = self._proto;
              window.PIXI.Sprite.prototype._klass = self;
    }

    def self.new(texture)
      `new window.PIXI.Sprite(texture)`
    end

  end
end
