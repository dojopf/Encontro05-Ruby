class Item

  attr_accessor :valor, :tempo

  def initialize(valor)
      @valor = valor
      @tempo = Time.now
  end

end

