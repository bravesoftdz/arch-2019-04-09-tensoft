# Dzień 1: Nowoczesne programowanie w Delphi

1. Zaawansowane programowanie obiektowe
	* [ ] Klasy wspomagające (class helpers), metody anonimowe
	* [ ] Wykorzystanie zdarzeń
	* [ ] Enumeratory, polimorfizm, klasy abstrakcyjne i zastosowanie interfejsów
	* [ ] Typy generyczne i kolekcje generyczne
1. Programowanie wielowątkowe
	* [ ] Sekcje bezpieczne
	* [ ] Wielowątkowe pobieranie i przetwarzanie danych na serwerze SQL 
1. Wymiana informacji między systemami
	* [ ] Moduł System.JSON - przetwarzanie danych w formacie JSON
	* [ ] Komponent TXMLDocument - przetwarzanie danych w formacie XML

# Dzień 2: Komunikacja sieciowa

1. Przegląd protokołów i standardów sieciowych
	* [ ] Wprowadzenie do protokołu TCP/IP oraz HTTP
	* [ ] Omówienie mechanizmów sieci WWW
	* [ ] Specyfikacje HTML, MIME, SSL ,SOAP, REST
1. Komponenty Indy - komunikacja TCP
	* [ ] Komponenty TIdTCPClient i TIdTCPServer
	* [ ] Planowanie protokołu komunikacyjnego, przygotowanie wiadomości
	* [ ] Wysyłanie i odbieranie wiadomości
	* [ ] Tworzenie serwera jako usługi systemowej
1. Tworzenie serwerów HTTP w technologii WebBroker
	* [ ] Zasady tworzenia i struktura serwera. 
	* [ ] Przetwarzania parametrów. 
	* [ ] Wysyłanie odpowiedzi tekstowej i binarnej.
	* [ ] Typ wiadomości HTTP i definicje MIME - standardy kodowania wiadomości tekstowych i binarnych
	* [ ] Przesyłanie danych relacyjnych z bazy SQL
	* [ ] Obsługa poleceń HTTP: GET, POST, PUT, DELETE
	* [ ] Instalacja i wdrażanie serwerów WebBroker.
1. Komponent TIdHTTP - klient HTTP
	* [ ] Pobieranie danych z sieci. 
	* [ ] Stworzenie serwera i obsługa żądań i analiza parametrów. 
	* [ ] Metody wywołań: GET, POST, PUT, DELETE. 
	* [ ] Przygotowanie nagłówka wiadomości HTTP 
	* [ ] Kontrola pobieranego strumienia. 
	* [ ] Wykorzystanie wzorca REST do przekazywania danych.
	* [ ] Komunikacja z serwerami WebServices - tworzenie koperty SOAP w XML-u oraz przetwarzanie odpowiedzi

# Dzień 3: FireDAC, komunikacja z Firebird 3

1. Budowa i konfiguracja wydajnych aplikacji SQL dla serwera Firebird
	* [ ] Wykorzystanie definicji połączenia jako aliasu. Dynamiczne definiowanie połączeń. Użytkownik aplikacyjny i autentykacja użytkownika końcowego.
	* [ ] System opcji FireDAC: optymalizacja fetch-owania wierszy, konfiguracja algorytmu automatycznej generacji poleceń UPDATE i INSERT, stronicowanie wierszy, opóźnione pobieranie pól BLOB
1. Bezpieczeństwo aplikacji
	* [ ] Zarządzanie połączeniem z serwerem. Odzyskiwanie połączeń utraconych, przełączanie połączenia w tryb off-line. Diagnostyka.
	* [ ] Automatyczne zarządzanie transakcjami przez FireDAC-a a system transakcji serwera Firebird. Transakcje zagnieżdżone i transakcje ciągłe.
1. Przegląd tematów zaawansowanych
	* [ ] Wykorzystanie Array DML - błyskawiczne dodawanie i modyfikacja dużych ilości danych do tabel
	* [ ] Silnik local SQL - integracja danych z różnych źródeł
	* [ ] Obsługa pól auto-numerowanych i sekwencji / generatorów.