#require_relative 'lib/lib_forca'
require_relative 'lib/lib2'
require_relative 'lib/lib_abertura'



jogo = JogoForca.new



until (jogo.completo == true ) or (jogo.nvidas == 0)
  puts
  puts "Você tem " + jogo.nvidas.to_s + " vidas"
  puts
  puts 'A Palavra tem ' + jogo.arrmostra.length.to_s + ' letras'
  puts
  print jogo.arrmostra
  puts
  puts
  puts 'Digite uma Letra!'
  letra = gets.chomp.upcase
  jogo.compara(letra)
  puts
  system "clear"
end

if jogo.completo == true
  jogo.venceu
else
 jogo.perdeu

end