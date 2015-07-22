module PIXI::Examples

class Text < PIXI::Examples::Base
  def initialize(menu, renderer)
    width =  `window.innerWidth`
    height = `window.innerHeight`
    x_mid = width / 2
    y_mid = height / 2

    # renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x66FF99 }
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    basic_text = PIXI::Text.new('Basic text in pixi')
    basic_text.x = x_mid - basic_text.width / 2
    basic_text.y = y_mid - basic_text.height / 2

    # add him to the stage
    stage.add_child(basic_text)

    style = {
        'font' => 'bold italic 36px Arial',
        'fill' => '#F7EDCA',
        'stroke' => '#4a1850',
        'strokeThickness' => 5,
        'dropShadow' => true,
        'dropShadowColor' => '#000000',
        'dropShadowAngle' => `Math.PI` / 6,
        'dropShadowDistance' => 6,
        'wordWrap' => true,
        'wordWrapWidth' => 440
    }

    rich_text = PIXI::Text.new('Rich text with a lot of options and across multiple lines',style)
    rich_text.x = x_mid
    rich_text.y = y_mid
    # center the sprite's anchor point
    rich_text.anchor.x = 0.5
    rich_text.anchor.y = 0.5


    stage.add_child(rich_text)

    # start animating
    count = 0
    animate = Proc.new do
      count += 0.01
      `requestAnimationFrame(animate)`

      # just for fun, let's rotate 'le text' a little
      rich_text.x = x_mid + (`Math.sin(count)` * (x_mid - rich_text.width/2))
      rich_text.y = y_mid + (`Math.cos(count)` * (y_mid - rich_text.height/2))
      rich_text.rotation += 0.01

      # render the container
      renderer.render stage
    end

    # add the menu
    stage.add_child(menu)

    animate.call
  end
end

end
