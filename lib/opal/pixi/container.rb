
module PIXI
  class Container < `PIXI.Container`

    def self.new()
      `new PIXI.Container()`
    end

    def add_child(child)
      `self.addChild(#{child})`
    end

    def on(event, &handler)
      `self.on(#{event}, #{handler.to_n})`
    end

  end
end
