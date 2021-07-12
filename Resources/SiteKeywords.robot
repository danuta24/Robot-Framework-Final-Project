*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Variables ***
${Url}   http://soyalight.pl
${Browser}   chrome
${product}  woski
${product1}  zestawy prezentowe
${product2}  Świeca sojowa Migdał

*** Keywords ***
Prepare Env
    Set Screenshot Directory    Screenshots

Otworz strone
    [Arguments]   ${Url}   ${Browser}
    Open Browser   ${Url}   ${Browser}
    Maximize Browser Window

Wpisz produkt
    [Arguments]   ${search_field}   ${product}
    Input Text    ${search_field}   ${product}

Nacisnij szukaj
    Wait Until Element Is Visible    ${search_button}
    Click Element   ${search_button}

Otworz karte produktu
    Wait Until Element Is Visible    ${product_click}
    Click Element   ${product_click}

Dodaj do koszyka
    Wait Until Element Is Visible    ${basket_button}
    Click Element   ${basket_button}

Sprawdz komunikat
    Wait Until Element Is Visible    ${komunikat}
    Element Should Be Visible    ${komunikat}
    Element Should Contain    ${komunikat}   Wypełnij wymagane opcje

Sprawdz komunikat o blednych wartosciach
    Wait Until Element Is Visible    ${blad}
    Element Should Be Visible    ${blad}
    Element Should Contain    ${blad}   Nie znaleziono produktów spełniających podane kryteria.

Zamknij przegladarke
    Close Browser




