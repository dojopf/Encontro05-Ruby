class Acesso
  attr_accessor :cache
  attr_reader :tamanho

  def initialize tamanho
    @tamanho = tamanho
    @cache = Hash.new

  end

  def deleta_mais_velho
    mais_velho = nil
    @cache.each do |chave, item_cache|
      if mais_velho == nil
        mais_velho = chave
      elsif @cache[mais_velho].tempo < item_cache.tempo
        mais_velho = chave
      end
    end
    @cache.delete(mais_velho)
  end


  def get_value item
    if @cache.has_key? item.valor
      return @cache[item.valor].tempo = Time.now
    else
      if @cache.length < tamanho
        return @cache[item.valor] = item
      else
        deleta_mais_velho()
      end
      return @cache[item.valor] = item
    end
  end
end

