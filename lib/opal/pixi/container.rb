require 'native'
require './base'
require './display_object'

module PIXI
  class Container < PIXI::DisplayObject
    include Native

    %x{
      self._proto = window.PIXI.Container.prototype, def = self._proto;
              window.PIXI.Container.prototype._klass = self;
    }

    def self.new(color)
      `new window.PIXI.Container(color)`
    end

    def add_child(child)
      `self.addChild(child)`
    end

    def x
      `self.position.x`
    end

    def x=(x)
      `self.position.x = x`
    end

    def y
      `self.position.y`
    end

    def y=(y)
      `self.position.y = y`
    end


  end
end
