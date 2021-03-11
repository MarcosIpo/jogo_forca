class JogoForca
  attr_accessor :palavra
  attr_accessor :acerto
  attr_accessor :erros

  def initialize
    @palavra = ('aviao').upcase.split('')
    @acerto = false
    @erros = 0

  def self.selpal
    p = []
    File.open(File.expand_path('../lista_palavras.txt', __FILE__), 'r') do |arquiv|
      while linha = arquiv.gets
        p.push (linha.upcase)
      end
    p.sample
    end
  end
  def compara (letra = '')
    palavra = @palavra
    tamanho = palavra.length
    agora = 0
    while agora < tamanho
      agora = agora +1
      if palavra[(agora-1)] == letra
        puts 'acertou miserave'          
      else
        @erros = erros + 1
        puts 'errou'
      end
      puts "Digite uma Letra"
      letra = gets.chomp.upcase
    end

  end

  end
jogo = JogoForca.new

while jogo.erros < 4
  puts "Digite uma Letra"
  letra = gets.chomp.upcase
  jogo.compara(letra)
#   palavra = selpal.split('')
  
  
end
end