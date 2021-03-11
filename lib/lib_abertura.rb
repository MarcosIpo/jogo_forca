require 'tty-progressbar'
class Abertura
    def self.iniciando
    system ('clear')
    bar = TTY::ProgressBar.new("Carregando [:bar]", total: 100)
      100.times do
        sleep (0.05)
        bar.advance
      end
    



    #
    #
    #
    #
    #
    #
    #
    #
  end
end