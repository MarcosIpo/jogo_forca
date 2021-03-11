require_relative 'lib_abertura'


class Forca
  attr_reader :arrpalavraoculta
  attr_reader :completo
  attr_reader :vidas
  attr_reader :contador_vidas

  def initialize

    
    #Abertura.iniciando
    p = []
    p = File.readlines(File.expand_path('../../lista_palavras.txt', __FILE__), chomp:true).sample 
    p = p.upcase
    @arrpalavraoculta = p.split('')
    @venceu = false
    @vidas = false
    @contador_vidas = 5
  end

  def compara (letra)

    letraagora = 0 
    arrcompara = arrmostra.clone
    while letraagora < tampalavra
      if arrpalavraoculta[letraagora] == letra
        arrmostra[letraagora] = letra
      end
        letraagora = letraagora + 1
    end
    print arrmostra
    puts
    if arrpalavraoculta == arrmostra
      completo = true
    end
    if arrcompara == arrmostra
      vidas = vidas - 1
      puts 'Não temos nenuma letra ' + letra
    end
  end
end

