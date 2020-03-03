Feature: Paraderos

    Scenario: As a user I want to see in Todos the street AC 13 and 183 bus
        Given I press "Paraderos"               
        #button to remove the splash screen
        Given I press "Paraderos"
        Then I wait for 1 second
        Given I press "AC 13"
        Given I press "183"
        Then I should see "Br. Roma"

    Scenario: As a user I want to see in Transmilenio the 21 Ángeles station and B50 bus
        Given I press "Paraderos"
        Given I press "TRANSMILENIO"
        Then I wait for 1 second
        Given I press "21 Ángeles"
        Given I press "B50"
        Then I should see "Portal Suba"
    
    Scenario: As a user I want to see in SITP the street AC 13 and 15 bus
        Given I press "Paraderos"
        Given I press "SITP"
        Then I wait for 1 second
        Given I press "AC 13"
        Given I press "15"
        Then I should see "AV. Tintal"
    
    