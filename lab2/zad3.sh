#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2 – semestr letni 2020/2021
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
#
# Przygotowane rozwiązania nie muszą być całkowicie uniwersalne. Zakładamy,
# że ogólna struktura katalogów się nie zmienia (nie będzie już więcej/mniej
# poziomów podkatalogów), jednakże same nazwy i zawartości plików (o ile
# nie są podane wprost w treści zadań) mogą być dowolne i ulegać zmianie,
# a przygotowane rozwiązania nadal powinny działać.
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 3.
# Skopiować wszystkie możliwe pliki z katalogu `aaa` do katalogu `ddd`,
# upewniając się, że nie nadpiszemy żadnego istniejącego pliku w `ddd`.
#

# dla kazdego pliku w aaa 
for file in aaa/*; do
	base=$(basename "$file") # pobieramy tylko nazwe

	# jesli nie istnieje scieżka doo tego pliku w ddd
	if [ ! -e "ddd/$base" ]; then
		# to kopiujemy
		cp "$file" "ddd/$base"
		echo "skopiowano $base"
	else
		echo "pomijamy $base bo jest w ddd"
	fi
done

