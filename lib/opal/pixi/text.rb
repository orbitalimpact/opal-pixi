
module PIXI
  class Text < Sprite
    %x{
    #{self}._proto = window.PIXI.Text.prototype, def = #{self}._proto;
            window.PIXI.Text.prototype._klass = #{self};
    }

    # options according to http://pixijs.github.io/docs/PIXI.Text.html
    def self.new(x,y)
      `new window.PIXI.Text(x,y)`
    end

    def text= new_text
      `self.text = new_text`
    end

    def text
      `self.text`
    end

  end
end
