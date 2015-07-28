require 'opal/pixi/core/math/point'

module PIXI
  module InteractiveTarget
    include Native

    alias_native :interactive
    alias_native :interactive=
    alias_native :interactive_children, :interactiveChildren
    alias_native :interactive_children=, :interactiveChildren=
    alias_native :default_cursor, :defaultCursor
    alias_native :default_cursor=, :defaultCursor=

    alias_native :on
  end
end
