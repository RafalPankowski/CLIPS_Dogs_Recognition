Rozpoznawanie rasy psa

Opis projektu

Projekt ten służy do rozpoznawania rasy psa na podstawie wybranych cech. Zawiera bazę danych 10 ras psów, program do klasyfikacji oparty na regułach oraz drzewo decyzyjne przedstawiające proces decyzyjny.

Zawartość repozytorium

Baza_10_Ras_Psow.ods - Plik zawierający bazę danych 10 ras psów oraz ich charakterystyczne cechy.

Program_rozpoznanie_rasy_psa.clp - Program w języku CLIPS służący do klasyfikacji rasy psa na podstawie wprowadzonych cech.

Drzewo_decyzyjne.jpg - Obraz przedstawiający drzewo decyzyjne wykorzystywane w procesie klasyfikacji.

Wymagania

Aby uruchomić program, wymagane jest środowisko CLIPS. Można je pobrać i zainstalować z oficjalnej strony:

CLIPS Download

Instalacja i uruchomienie

Pobierz pliki z repozytorium.

Uruchom CLIPS.

Załaduj plik Program_rozpoznanie_rasy_psa.clp w środowisku CLIPS za pomocą komendy:

(load "Program_rozpoznanie_rasy_psa.clp")

Uruchom program, wpisując:

(reset)
(run)

Odpowiadaj na pytania dotyczące cech psa, aby uzyskać rozpoznanie rasy.
