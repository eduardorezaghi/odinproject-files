# File: poem.txt
poem = <<~POEM
  Ode à Lua

  Oh, lua tão brilhante, no céu escuro da noite,
  Seu brilho suave, uma canção de ninar celestial.
  Com raios prateados, você dança suavemente,
  Lançando sombras, criando romance.

  De contos antigos a lendas modernas,
  Você inspirou poetas, para sempre.
  Sua beleza tranquila, uma arte atemporal,
  Cativando mentes e roubando corações.

  Oh, lua tão bela, uma luz guia,
  Iluminando o mundo, durante a noite.
  Sua presença silenciosa, uma força calmante,
  Preenchendo os céus com um discurso infinito.

  Enquanto as estrelas cintilam e a noite fica quieta,
  Seu brilho radiante, com uma emoção tranquila.
  Nós contemplamos você, maravilhados e admirados,
  Para sempre cativados, por seu esplendor celestial.

  Então, lua acima, na vastidão do espaço,
  Nós te honramos, com essa dança humilde.
  Sua graça etérea, uma visão a ser admirada,
  Para sempre valorizada, em histórias não contadas.
POEM

File.write("poem.txt", poem)

File.foreach("poem.txt") do |line|
  puts line
end
