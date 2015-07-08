
module PIXI
  class Container

    %x{
    #{self}._proto = window.PIXI.Container.prototype, def = #{self}._proto;
            window.PIXI.Container.prototype._klass = #{self};
    }

    def self.new()
      `new window.PIXI.Container()`
    end

    def add_child(child)
      `#{self}.addChild(child)`
    end

  end
end
