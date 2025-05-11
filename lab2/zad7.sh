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
# Zadanie 7.
# Wyszukać w katalogu `bbb` i jego podkatalogach wszystkie pliki zwyczajne
# (nie katalogi!), które są w systemie plików oznaczone jako wykonywalne.
# Utworzyć w katalogu `ddd` plik `ostrzeżenie`, w którym pojawi się informacja
# "Uważaj na te pliki:" oraz lista znalezionych plików (każdy w nowej linii).
#

> ddd/ostrzeżenie

echo "Uważaj na te pliki:" >> ddd/ostrzeżenie

find bbb -type f -executable | while read -r file; do
	echo "$file" >> ddd/ostrzeżenie

done	
