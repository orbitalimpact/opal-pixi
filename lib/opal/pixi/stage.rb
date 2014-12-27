module PIXI
  class Stage
    %x{
    #{self}._proto = window.PIXI.Stage.prototype, def = #{self}._proto;
            window.PIXI.Stage.prototype._klass = #{self};
    }

    def self.new(color)
      `new window.PIXI.Stage(color)`
    end

    def add_child(child)
      `#{self}.addChild(child)`
    end
  end
end
