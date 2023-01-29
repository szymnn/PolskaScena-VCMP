# [PL]
## Zasada działania
 Jest to część "jądra" tylko dla VCMP. 

 W celu uruchomienia w server.cfg należy dodać plugin ***ini04rel64*** lub ***ini04rel32***
### Jak tego używać? 
 w programowaniu nie zawsze potrzebujemy wsyzystkich funkcji, dofile wymaga pełnej ścieżki użycie namespace pozwala zaoszczędzić czas. Użycie jego z wbudowanym autoload wygląda w sposób następujący 

 Tworzymy skrytp/moduł w pliku np. init.nut rejestrujemy nasze namespace ***namespace("Nazwa Katalogu/Nazwa Katalogu/Nazwa Katalogu/ Nazwa pliku")***

 Oczywiście nazwa pliku jest taka jaka plik .nut jednak struktura katologowa musi zostać odpowiednio zachowana, a nazwa musi być unikalna dla przykładu:
 w ktalaogu modules tworzymy folder o nazwie **Vehicle** oraz drugi o nazwie **Database** , we wnętrzu obydwu jest plik ****init.nut*** ,który jest automatycznie wczytywany za pomocą autoload oraz są podkatalogi: Services, Controller, Model.
 W katalogu np. Database/Controller mamy: ***OperationController.nut***, a w  Vehicle/Controller jest plik ***SpawnController.nut***, aby zarejestrować namespace przechodzimy do pliku init.nut, który jest w głównym katalogu z modułem.
## w pliku init.nut wpisujemy 
 namespace("Modules/Vehicle/Controller/SpawnController"); 
 namespace("Modules/Database/Controller/OperationController");

co dzięki temu zyskujemy? Załóżmy, że piszemy teraz skrypt odpowiedzialny za zakup / sprzedaż pojazdu i jest on w katalogu scripts. 
Do sprzedaży zakupu pojazdu wykonujemy operacje na bazie danych.
Nie potrzebujemy spawnowania/tworzenia pojazdu tylko aktualizację jego w bazie danych 
zatem przechodzimy do katalogu np. ***scripts*** tworzymy skrypt o nazwie ***"Vehicle.nut"*** na samej górze wywołujemy ***use("Modules/Database/Controller/OperationController");*** 
i uzyskujemy dostęp do metod zawartych w tym kontrolerze czyli np. insert(), update()
Jeżeli potrzebujemy wykorzystać inne funkcje/pliki dodajemy kolejny use();