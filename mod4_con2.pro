/* Contoh 2
----------------------------------*/
PREDICATES
	nondeterm jenis(symbol,symbol)
	nondeterm adalah(symbol,symbol)
	hidup(symbol,symbol)
	nondeterm dapat_berenang(symbol)
CLAUSES
	jenis(vertebrata,hewan).
	jenis(ikan,hewan).
	
	adalah(zebra,vertebrata).
	adalah(lele,ikan).
	adalah(tuna,ikan).
	
	hidup(zebra,di_darat).
	hidup(kodok,di_darat).
	hidup(kodok,di_air).
	hidup(tuna,di_air).
	
	dapat_berenang(Y):-
		jenis(X,hewan),
		adalah(Y,X),
		hidup(Y,di_air).
		
GOAL
	dapat_berenang(Apa).
	

