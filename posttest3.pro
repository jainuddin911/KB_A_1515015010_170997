PREDICATES
nondeterm senang(symbol,symbol) % Didalam predikat ada keyword nondeterm, artinya bahwa jawaban akan berisi lebih dari 1 kemungkinan dan predikat menyukai nilai dari symbol.

CLAUSES 
senang(hasyim,game). % Hasyim senang game
senang(edwin,desain). %edwin senang desain
senang(romy,adventure). %romy senang adventure
senang(zeka,game). %zeka senang game
senang(zeka, desain). %zeka juga senang desain

GOAL
senang(Orang, game),
senang(Orang, desain). % Dilama tujuannya yang ingin di capai oleh program adalah untuk mencari berupa senang(Orang, game), senang(Orang, desain). Maksudnya adalah siapa kah orang yang senang game dan juga desain		 
      % GOAL nya juga menghasilkan bahwa zeka senang game dan juga suka desain. 