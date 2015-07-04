# require('../math'),
# require('./DisplayObject'),
# require('../textures/RenderTexture'),
# new math.Matrix();
require 'opal/pixi/core/display/display_object'

module PIXI
  class Container < DisplayObject
    include Native

    def initialize(arg_hash = {}, &block)
      @native = %x{
        new PIXI.Container()
      }
    end

    alias_native :width
    alias_native :height
    alias_native :add_child, :addChild

  end
end


# // constructor
# Container.prototype = Object.create(DisplayObject.prototype);
#     width: {
#         get: function ()
#         set: function (value)
#     height: {
#         get: function ()
#         set: function (value)
# Container.prototype.addChild = function (child)
# Container.prototype.addChildAt = function (child, index)
# Container.prototype.swapChildren = function (child, child2)
# Container.prototype.getChildIndex = function (child)
# Container.prototype.setChildIndex = function (child, index)
# Container.prototype.getChildAt = function (index)
# Container.prototype.removeChild = function (child)
# Container.prototype.removeChildAt = function (index)
# Container.prototype.removeChildren = function (beginIndex, endIndex)
# Container.prototype.generateTexture = function (renderer, resolution, scaleMode)
# Container.prototype.updateTransform = function ()
# Container.prototype.containerUpdateTransform = Container.prototype.updateTransform;
# Container.prototype.getBounds = function ()
# Container.prototype.containerGetBounds = Container.prototype.getBounds;
# Container.prototype.getLocalBounds = function ()
# Container.prototype.renderWebGL = function (renderer)
# Container.prototype._renderWebGL = function (renderer) // jshint unused:false
# Container.prototype._renderCanvas = function (renderer) // jshint unused:false
# Container.prototype.renderCanvas = function (renderer)
# Container.prototype.destroy = function (destroyChildren)
