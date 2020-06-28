Feature: Rename multiple things at once 

  Background:
      Given I switch to buffer
      And I prepare modes
      And I clear the buffer
      And I insert the text
      And I go to the beginning of the buffer
      And I bind key "C-c b" to "evil-multiedit-match-and-next"

  Scenario: Change multiple match item
      When I change the multiple items
      Then I should see:
        """
        foo
        foo
        foo
        """