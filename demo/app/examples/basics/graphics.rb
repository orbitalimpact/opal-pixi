module PIXI::Examples

class Graphics < PIXI::Examples::Base
  def initialize(menu, renderer)
    height = `window.innerHeight`
    width =  `window.innerWidth`

    # renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x000000 }
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    stage.interactive = true

    graphics = PIXI::Graphics.new

    # set a fill and line style
    graphics.begin_fill(0xFF3300)
    graphics.line_style(4, 0xffd900, 1)

    # draw a shape
    graphics.move_to(50,50)
    graphics.line_to(250, 50)
    graphics.line_to(100, 100)
    graphics.line_to(50, 50)
    graphics.end_fill

    # set a fill and a line style again and draw a rectangle
    graphics.line_style(2, 0x0000FF, 1)
    graphics.begin_fill(0xFF700B, 1)
    graphics.draw_rect(50, 250, 120, 120)

    # draw a rounded rectangle
    graphics.line_style(2, 0xFF00FF, 1)
    graphics.begin_fill(0xFF00BB, 0.25)
    graphics.draw_rounded_rect(150, 450, 300, 100, 15)
    graphics.end_fill

    # draw a circle, set the line_style to zero so the circle doesn't have an outline
    graphics.line_style(0)
    graphics.begin_fill(0xFFFF0B, 0.5)
    graphics.draw_circle(470, 90,60)
    graphics.end_fill

    # add graphics to the stage
    stage.add_child(graphics)

    # run the render loop
    animate = Proc.new do
        `requestAnimationFrame(animate)`

        # render the container
        renderer.render stage
    end

    # add the menu
    stage.add_child(menu)

    animate.call

    @destroy = Proc.new {
      
    }
  end
end

end
