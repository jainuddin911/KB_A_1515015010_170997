DOMAINS
benda = buku(judul, pengarang) ;				%benda mempunyai buku kuda kapal dan buku bank
kuda(nama) ; kapal ;
bukubank(saldo)
judul, pengarang, nama = symbol					%judul, pengarang, nama tipe datanya symbol
saldo = real							%saldo tipe datanya real

PREDICATES
nondeterm milik(nama,benda)					%nama mempunyai benda

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).	%erwin mempunyai buku
milik(erwin, kuda(buraq)).					%erwin juga mempunyai kuda
milik(erwin, kapal).						%erwin pun mempunyai kapal
milik(erwin, bukubank(1000)).					%dan erwin juga mempunyai buku bank

GOAL
milik(erwin, Benda).						%erwin mempunyai benda apa
								%erwin mempunyai semua yang disebutkan diatas