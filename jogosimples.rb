strpalavra = 'aviao' # string base para o jogo da Forca
arrpalavraoculta = strpalavra.upcase.split('') # transforma a string em maiuscula joga cada letra para um possicao em uma array  
tampalavra = arrpalavraoculta.length # pega o tamanho da array para definir os loopings
arrmostra =[] # cria array que sera visisvel para o cliente saber quantas letras acertou e quantas faltam
(tampalavra).times do   # seta a array que mostra para o cliente, com o mesmo numero de 'casas' da palavra base
  arrmostra.push(' _ ')
end

vidas = 5  # o cliente pode errar 5 vezes
completo = false # vai setar se o jogo foi completado ou nao



while (vidas > 0) and (completo == false)
  letraagora = 0 
  puts 'Digite uma Letra!'
  letra = gets.chomp.upcase
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
    puts 'Não temos nenuma letra ' + letra
    vidas = vidas - 1
  end
end
