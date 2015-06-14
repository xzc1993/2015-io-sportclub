#2015 IO SportClub Project


Projekt został wykonany w ramach przedmiotu Inżynieria Oprogramowania, w roku akademickim 2014/2015 w semestrze letnim.

##Instrukcja obsługi
------------

Aby móc korzystać z aplikacji należy posiadać:
* Ruby w wersji 2.2.0
* Framework Ruby on Rails w wersji 4.2.0
* Bazę danych MongoDB

Użytkownikom systemów linuxowych zaleca się użycie narzędzia [RVM](https://rvm.io/). Opis instalacji języka Ruby wraz z frameworkiem znajduje się na stronie. Dla użytkowników systemów Windows istnieje paczka [RailsInstaller](http://railsinstaller.org/en). Ze względu jednak na niestabilność niektórych gemów pod systemem Windows, zdecydowanie zaleca się korzystanie z dystrybucji linuxa.

Aby pobrać projekt należy użyć komendy
```
git clone https://github.com/xzc1993/2015-io-sportclub
```
Następnie, przechodząc do katalogu głównego projektu wpisujemy komendę

``` 
bundle install 
```

Przy pomocy tej komendy zainstalujemy wszystkie gemy wykorzystywane w projekcie. Za pierwszym razem może to potrwać około 1-2 minut.

Teraz aby móc uruchomić aplikację, należy utworzyć 2 pliki konfiguracyjne. Uruchamiamy zatem w konsoli komendę 

```
rake secret
```

Wygenerowany zostanie token który należy zapisać. W katalogu *config/*  tworzymy plik o nazwie *secrets.yml* . W tym pliku umieszczamy następujacą zawartość:

``` 
development:
   secret_key_base: wygenerowany_wcześniej_token
```

Pozostaje jeszcze wygenerować plik konfiguracyjny dla bazy danych, co wykonujemy poleceniem:
```
rails generate mongoid:config
```

Aby uruchomić aplikację wstukujemy komendę 
```
rails s
```

i w przeglądarce wchodzimy na http://localhost:3000.
Gotowe!

---
### Autorzy projektu
* Paweł Cegielski
* Dariusz Pieniążek
* Antoni Pstraś
* Wojciech Zabawa
* Krzysztof Zięba
