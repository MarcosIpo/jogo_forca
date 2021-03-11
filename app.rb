#require_relative 'lib/lib_forca'
require_relative 'lib/lib2'
require_relative 'lib/lib_abertura'



jogo = JogoForca.new



while (jogo.completo == false ) and (jogo.nvidas > 0)
  puts 'Digite uma Letra!'
  letra = gets.chomp.upcase
  jogo.compara(letra)
  puts
  print jogo.arrmostra
  puts
  puts jogo.nvidas
  puts 
  puts jogo.completo
  puts
end