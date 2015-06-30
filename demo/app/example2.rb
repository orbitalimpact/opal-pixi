require 'opal/pixi'
require 'native'
require 'opal-browser'

class Example2
  def initialize
    # var renderer = PIXI.autoDetectRenderer(800, 600,{backgroundColor : 0x1099bb});
    renderer = PIXI::WebGLRenderer.new 800, 600, { background_color: 0x1099bb }
    $document.body << renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    # create a texture from an image path
    texture = PIXI::Texture.from_image "bunny.png"

    container = PIXI::Container.new
    stage.add_child(container)

    bunnies = []
    10.times do |x|
      10.times do |y|
        bunny = PIXI::Sprite.new texture
        bunny.position = PIXI::Point.new(40 * x, 40 * y)
        container.add_child(bunny)
      end
    end

    # All the bunnies are added to the container with the addChild method
    # when you do this, all the bunnies become children of the container,
    # and when a container moves, so do all its children. This gives you
    # a lot of flexibility and makes it easier to position elements on the screen

    container.position = PIXI::Point.new(50,50)

    animate = Proc.new do
      `requestAnimationFrame(animate)`
      container.rotation += 0.1

      # render the root container
      renderer.render stage
    end
    animate.call
  end
end

class Example2b
  def initialize
    stage = PIXI::Container.new
    renderer = PIXI::WebGLRenderer.new 800, 600, { background_color: 0x1099BB }
    container = PIXI::Container.new

    stage.add_child(container)

    # opal-jquery would clean this up
    body = Native(`window.document.body`)
    body.appendChild renderer.view

    texture = PIXI::Texture.from_image "bunny.png"

    bunnies = []
    10.times do |x|
      10.times do |y|
        bunny = PIXI::Sprite.new texture
        bunny.anchor = PIXI::Point.new(0.5, 0.5)
        bunny.position = PIXI::Point.new(40 * x, 40 * y)
        bunnies << bunny
        container.add_child(bunny)
      end
    end

    stage.add_child(container)

    container.position = PIXI::Point.new(50,50)
    container.anchor = PIXI::Point.new(200, 200)

    animate = Proc.new do
      `requestAnimationFrame(animate)`
      bunnies.each do |bunny|
        bunny.rotation += 0.1
      end
      container.x += 0.001
      renderer.render stage
    end
    animate.call
  end
end
