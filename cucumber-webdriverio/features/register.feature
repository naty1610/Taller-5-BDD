Feature: Register into losestudiantes
    As an user I want to register myself within losestudiantes website in order to rate teachers

    Scenario Outline: Register fail

    Given I go to losestudiantes home screen
        When I open the login screen
        And I fill the inputs with <name> with <lastname> with <email> and <password>
        And I try to register
        Then I expect to see error <error>

        Examples:
        | name  | lastname     | email              | password       | error                    |
        | Naty  | Hernandez    | miso10@gmail.com   |    1234        | "La contraseña debe ser al menos de 8 caracteres"   |

    Scenario Outline: Register success

    Given I go to losestudiantes home screen
        When I open the login screen
        And I fill the inputs with <name> with <lastname> with <email> and <password>
        And I try to register
        Then I expect to see message <h2>

        Examples:
        | name  | lastname     | email              | password       | h2                    |
        | Naty  | Hernandez    | miso17@gmail.com   |    1234567890  | "Registro exitoso!"   |
    
    