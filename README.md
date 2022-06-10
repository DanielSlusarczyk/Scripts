# Scripts
Repozytorium przechowujące autorskie skrypty wykonujące określone cele z zakresu Sieci Komputerowych i Systemów Operacyjnych.

## zrzutyEkranu.ps1
Skrypt umożliwiający automatyzacje zarządzania katalogiem przechowującym zrzuty ekrany. Uruchomienie skryptu powoduje przejrzenie wszystkich plików (z wyłączeniem katalogów) zawartych w zadeklarowanej ścieżce. Na podstawie daty modyfikacji pliku tworzony jest katalog o nazwie [miesiąc]_[rok] (jeśli takowy już nie istnieje), a następnie plik jest przenoszony do przypisanego katalogu. Ostatnim krokiem skryptu jest zaraportowanie liczby przeniesionych plików i ewentualnego utworzenia nowego katalogu. 

Dodanie skryptu do automatycznego uruchamiania pozwala na ciągłe zachowanie uporządkowania katalogu, a redyrekcja informacji zwracanych przez skrypt do wydzielonego pliku na kontrole działania skryptu.

### Katalog po działaniu skryptu:
![2022-04-20 21_44_59-PlikiGS](https://user-images.githubusercontent.com/74370363/164310597-3545a255-ae76-4098-bb12-ae7f54d5c240.png)

### Raport po miesiącu automatycznego uruchamiania przy starcie systemu:
![2022-04-20 21_47_22-Editing Tanks_README md at master · DanielSlusarczyk_Tanks – Opera](https://user-images.githubusercontent.com/74370363/164310983-24f653b1-07bb-46d1-8b33-a31e3f30d8a3.png)
