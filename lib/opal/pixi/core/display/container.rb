require 'opal/pixi/core/display/display_object'

module PIXI
  class Container
    include Native
    include PIXI::DisplayObject

    def initialize
      super(`new PIXI.Container()`)
    end

    alias_native :width
    alias_native :width=
    alias_native :height
    alias_native :height=

    alias_native :add_child, :addChild
    alias_native :add_child_at, :addChildAt
    alias_native :swap_children, :swapChildren
    alias_native :get_child_index, :getChildIndex
    alias_native :set_child_index, :setChildIndex
    alias_native :get_child_at, :getChildAt
    alias_native :remove_child, :removeChild
    alias_native :remove_child_at, :removeChildAt
    alias_native :remove_children, :removeChildren
    alias_native :generate_texture, :generateTexture # renderer, resolution, scaleMode
    alias_native :get_bounds, :getBounds
    alias_native :get_local_bounds, :getLocalBounds
    alias_native :render_webGL, :renderWebGL # WebGLRenderer
    alias_native :render_canvas, :renderCanvas # CanvasRenderer
    alias_native :destroy # destroyChildren=false

  end
end
