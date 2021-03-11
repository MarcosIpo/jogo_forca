require_relative 'lib_abertura'


class JogoForca
  attr_reader :completo
  attr_reader :vidas
  attr_reader :arrmostra
  attr_reader :nvidas

  
  def initialize
    p = []
    p = File.readlines(File.expand_path('../../lista_palavras.txt', __FILE__), chomp:true).sample 
    p = p.upcase
    @arrpalavraoculta = p.split('')
    @tampalavra = @arrpalavraoculta.length
    @arrmostra = []
    (@tampalavra).times do 
      @arrmostra.push (' _ ')
    end
    @nvidas = 5
    @vidas = false
    @completo = false
    #Abertura.iniciando

  end


  def compara letra
    letraagora = 0
    arrcompara = @arrmostra.clone
    while letraagora < @tampalavra
      if @arrpalavraoculta[letraagora] == letra
        @arrmostra[letraagora] = letra
      end
      letraagora = letraagora + 1
    end
    if @arrpalavraoculta == arrcompara
      @completo = true
    end
    if arrcompara == @arrmostra
      puts 'Não temos nenhuma letra ' + letra
      @nvidas = @nvidas -1
      if @nvidas == 0
        @vidas = true
      end
    end
    
  end

end

