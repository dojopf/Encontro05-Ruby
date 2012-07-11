$:.unshift File.join(File.dirname(__FILE__), *%w[.. src])
require "rubygems"
require "test/unit"
require "Acesso"
require "Item"
class TestFile < Test::Unit::TestCase
  def setup
    @acesso = Acesso.new(10)
  end

  #Testa se a classe existe
  def test_classe_acesso
    #testa se eh nulo
    assert_not_nil(@acesso)
  end

  #Testa se o Hash Cache eh nulo(deve ser criado na instaciacao da classe)
  def test_classe_cache
    assert_not_nil(@acesso.cache)
  end

  #tenta inserir valor no cache
  def test_classe_insere
    value=rand(1..20)
    item = Item.new(value)
    assert_equal(value,@acesso.get_value(item).valor)
  end

  #testa tamanho do hash
  def test_insercao

  end
end

