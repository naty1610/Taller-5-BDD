Feature: Rutas y paraderos

    Scenario: As a user I want to see all Rutas
        Given I press "Paraderos"               
        #button to remove the splash screen
        Given I press "Rutas"
        Then I should see "Portal El Dorado"
    
    Scenario: As a user I want to see in Transmilenio Tag the route 2 Portal 20 de Julio
        Given I press "Rutas"
        Given I press "TRANSMILENIO"
        Given I press "2"
        Then I should see "Portal 20 de Julio"

    Scenario: As a user I want to see in Urbano Tag the route 7 El Dorado Palmitas
        Given I press "Rutas"
        Given I press "URBANO"
        Given I press "7"
        Then I should see "IED Aulas Colombianas San Luis"
    
    Scenario: As a user I want to see in Complementario Tag the route 2-6 Guaymaral
        Given I press "Rutas"
        Given I press "COMPLEMENTARIO"
        Given I press "2-6"
        Then I should see "Estación C.C. Santafé"
    
    Scenario: As a user I want to see in Especial Tag the route T07 Sidel
        Given I press "Rutas"
        Given I press "COMPLEMENTARIO"
        Given I press "ESPECIAL"
        Given I press "T07"
        Then I should see "Estación Av. 1 de Mayo"

    Scenario: As a user I want to see in Alimentador Tag the route 1-3 Villas de Granada
        Given I press "Rutas"
        Given I press "COMPLEMENTARIO"
        Given I press "ESPECIAL"
        Given I press "ALIMENTADOR"
        Given I press "1-3"
        Then I should see "Portal de la 80"
    
    Scenario: As a user I want to see all buses for Hospital Centro Oriental GSG
        Given I press "Rutas"
        Given I press "URBANO"
        Given I press "7"
        Given I press "Hospital Centro Oriental GSG"
        Then I should see "14-3"


    Scenario: As a user I want to see in Todos the street AC 13 and 183 bus
        #button to remove the splash screen
        Given I press "Paraderos"
        Given I press "AC 13"
        Given I press "183"
        Then I should see "Br. Roma"

    Scenario: As a user I want to see in Transmilenio the 21 Ángeles station and B50 bus
        #button to remove the splash screen
        Given I press "Paraderos"
        Given I press "TRANSMILENIO"
        Given I press "21 Ángeles"
        Given I press "B50"
        Then I should see "Portal Suba"
    
    Scenario: As a user I want to see in SITP the street AC 13 and 15 bus
        #button to remove the splash screen
        Given I press "Paraderos"
        Given I press "SITP"
        Given I press "AC 13"
        Given I press "15"
        Then I should see "AV. Tintal"