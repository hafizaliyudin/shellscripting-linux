memory (){				#function memory soal 1
  echo "Ukuran memory ="		#menampilkan tulisan ukuran memori
  free -m				#menampilkan ukuran memory (MB)
  echo					#spasi
}					#tutup function

hardisk (){				#function hardisk soal 2
echo "Ukuran Hardisk = "		#menampilkan tulisan ukuran hardisk
df -BG					#menampilkan hasil partisi hardisk dengan human readable
echo					#spasi
}					#tutup function

hardiskFilesystem (){			#function hardisk filesystem soal 3
echo "Ukuran Hardisk (Filesystem %) = "	#menampilkan tulisan ukuran hardisk
df -h | awk '!/tmpfs/ {print $1, $5}'	#menampilkan hasil ukuran hardisk dengan kolom filesystem dan %
echo					#spasi
}					#tutup  function

while true				#perulangan setelah semua bisa dieksekusi
do					#lakukan perintah pembuka

memory			         	#memanggil function memory
sleep 3			        	#jeda 3 detik

hardisk			        	#memanggil function hardisk
sleep 3			        	#jeda 3 detik

hardiskFilesystem			#memanggil function hardiskfilesystem
sleep 1m				#jeda 1 menit

echo "Eksekusi Selesai"		        #tulisan eksekusi selesai (penutup)

done					#penutup perulangan
