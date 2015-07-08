
module PIXI
  class Container < `PIXI.Container`

    def self.new()
      `new PIXI.Container()`
    end

    def add_child(child)
      `self.addChild(#{child})`
    end

  end
end
