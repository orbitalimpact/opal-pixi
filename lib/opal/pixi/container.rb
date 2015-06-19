module PIXI
  class Container
    %x{
    #{self}._proto = window.PIXI.Container.prototype, def = #{self}._proto;
            window.PIXI.Container.prototype._klass = #{self};
    }

    def self.new(color)
      `new window.PIXI.Container(color)`
    end

    def add_child(child)
      `#{self}.addChild(child)`
    end
  end
end
