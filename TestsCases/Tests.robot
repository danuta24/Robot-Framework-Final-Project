*** Settings ***
Metadata  Author   Danuta Jasinska <danutajasinska92@gmail.com>
Resource   ../Resources/SiteKeywords.robot
Suite Setup   Prepare Env

*** Test Cases ***
TC_01 - Wpisanie w pole Szukaj poprawnej wartosci
    [Setup]   Otworz strone   ${Url}   ${Browser}

    Wpisz produkt   ${search_field}   ${product}
    Sleep    5
    Nacisnij szukaj
    Sleep    5

    [Teardown]   Zamknij przegladarke

TC_02 - Wpisanie w pole Szukaj niepoprawnej wartosci
    [Setup]   Otworz strone   ${Url}   ${Browser}

    Wpisz produkt   ${search_field}   ${product1}
    Sleep    5
    Nacisnij szukaj
    Sleep    5
    Sprawdz komunikat o blednych wartosciach
    Sleep    5

    [Teardown]   Zamknij przegladarke

TC_03 - Wpisanie w pole Szukaj poprawnej wartosci
    [Setup]   Otworz strone   ${Url}   ${Browser}

    Wpisz produkt   ${search_field}   ${product2}
    Sleep    5
    Nacisnij szukaj
    Sleep    5

    [Teardown]   Zamknij przegladarke

TC_04 - Wpisanie w pole Szukaj poprawnej wartosci
    [Setup]   Otworz strone   ${Url}   ${Browser}

    Wpisz produkt   ${search_field}   ${product}
    Sleep    5
    Nacisnij szukaj
    Sleep    5
    Otworz karte produktu
    Sleep    5
    Dodaj do koszyka
    Sleep    5

    Sprawdz komunikat

    [Teardown]   Zamknij przegladarke











