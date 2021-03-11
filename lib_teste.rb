class SelecionarPalavra

  def self.selpal
    p = []
    File.open(File.expand_path('../lista_palavras.txt', __FILE__), 'r') do |arquiv|
      while linha = arquiv.gets
        p.push (linha.upcase)
      end
    p.sample
    end
  end
end


contentsArray=[] # start with an empty array
f.each_line {|line|
contentArray.push line
}