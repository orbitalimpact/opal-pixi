module PIXI
  class Container #< `PIXI.Container`
    include Native

    def initialize
      super(`new PIXI.Container()`)
    end

    alias_native :add_child, :addChild

  end
end
