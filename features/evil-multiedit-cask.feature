Feature: Edit multiple things simultaneously

  Background:
      Given I switch to buffer "test.c"
      And I prepare evil-mode and c-mode
      And I clear the buffer
      And I insert the text
        """
        int
        int
        int
        """
      And I go to the beginning of the buffer
      And I bind key "C-c b" to "evil-multiedit-match-and-next"
      And I bind key "C-c s" to "evil-multiedit--substitute"

  Scenario: evil-multiedit-match-and-next and evil-multiedit--substitute
      When I input following keystrokes "C-c b, C-c b, C-c b, C-c s"
      And I insert the "foo"
      Then I should see:
        """
        foo
        foo
        foo
        """