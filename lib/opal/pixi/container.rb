require 'native'

module PIXI
  class Container #< `PIXI.Container`
    include Native

    def initialize
      super(`new PIXI.Container()`)
    end

    # alias_native :add_child, :addChild

    def add_child(child)
      `#@native.addChild(#{child.to_n})`
    end

  #   def on(event, &handler)
  #     `self.on(#{event}, #{handler.to_n})`
  #   end

  end
end
