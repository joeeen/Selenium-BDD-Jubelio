Feature: Inventory

    Scenario: Update product quantity
        Given user is logged in
        And user is on the Inventory page
        When user updates the quantity of product "11179 - Digital ebook" by "5"
        Then alert success message "Data berhasil disimpan." is displayed



