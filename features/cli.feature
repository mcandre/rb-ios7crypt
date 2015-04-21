Feature: CLI

  Scenario: Running ios7crypt
    Given "ios7crypt -e monkey"
    Then the output is like "[0-9]{2}[0-9a-f]+"

    Given "ios7crypt -d 082c4340021c1c"
    Then the output is "monkey"

    Given "ios7crypt -v"
    Then the output is "ios7crypt"
