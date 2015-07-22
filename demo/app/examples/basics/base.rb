module PIXI::Examples

class Base
  def destroy
    @destroy.call
  end
end

end
