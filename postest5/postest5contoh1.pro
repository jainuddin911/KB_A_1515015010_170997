DOMAINS
orang = orang(nama,alamat)				%orang mempunyai nama dan alamat
nama = nama(pertama,kedua)				%mempunyai nama pertama dan nama kedua
alamat = alamat(jalan,kota_kab,propinsi)		%alamat terdiri dari jalan,kota_kabupaten dan provinsi
jalan = jalan(nama_jalan,nomor)				%jalan mempunyai nama jalan dan nomor
kota_kab,propinsi,nama_jalan = string			%kota_kab, provinsi, dan nama jalan tipe datanya bernilai string
pertama,kedua = symbol					%nama pertama dan kedua tipe datanya symbol
nomor = integer						%nomor tipe datanya integer

GOAL
P1 = orang(nama(diena,fatihah),				%P1 tediri dua nama orang yang memiliki alamat yg sama
alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
P1 = orang(nama(_,fatihah),Alamat),			%siapa yang beralamat sama dengan fatihah dan dimana alamatnya
P2 = orang(nama(nur,fatihah),Alamat),			%dimana alamat nur yang beralamat sama seperti fatihah
write("P1=",P1),nl,					%tulis P1 siapa (baris baru)
write("P2=",P2),nl.					%tulis P2 siapa (baris baru)