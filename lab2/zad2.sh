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
# Zadanie 2.
# Zweryfikować istnienie i zawartość pliku `drugi` z katalogu `ddd`.
# Plik powinien zawierać napis `Ala ma kota.`. Jeśli czegoś brakuje
# to odpowiedni plik stworzyć lub nadpisać istniejący.
#

if [ -f ddd/drugi ]
then
	content="$( cat ddd/drugi )"

	if [ "$content" = 'Ala ma kota.' ]
	then
		echo 'pliczek jest ok'
	else
		echo 'zła zawartość pliku'
		echo 'Ala ma kota.' > ddd/drugi
	fi
else
	echo 'nie ma pliczku'
	echo 'Ala ma kota.' > ddd/drugi
	echo 'dodano pliczek'	
fi
