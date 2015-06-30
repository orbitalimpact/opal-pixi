require './base'

module PIXI
  class Sprite < PIXI::DisplayObject
    # include PIXI::Base
    # name = "window.#{self.name.split('::').join('.')}"
    # code = "self._proto = #{name}.prototype, def = self._proto; #{name}.prototype._klass = self"
    # # %x{ alert(code) }
    # %x{ eval(code) }

    %x{
      self._proto = window.PIXI.Sprite.prototype, def = self._proto;
              window.PIXI.Sprite.prototype._klass = self;
    }

    def self.new(texture)
      `new window.PIXI.Sprite(texture)`
    end

  end
end
