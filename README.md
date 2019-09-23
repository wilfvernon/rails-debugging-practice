# Rails Debugging Practice

_A colleague and I were working on a Harry Potter app for fun. It's currently terrible and needs some work. Your goal is to get this application to full functionality. Read and understand the source code, read the below deliverables, and make the necessary changes/additions, to get the app to work_

## Deliverables

- A `Wizard` has a `name`, `house`, `image`, and `age`
- A `Spell` has a `name`, and `description`
- A `Wizard` has many `Spells` through `Favorite_Spells`
- A `Spell` has many `Wizards` through `Favorite_Spells`

*If the relationships are properly set up you should be able to successfully run `rails db:seed`*

`Wizard`

- A user should be able to see a list of all wizards
    - the list should show each wizard's image, name, house, and age
    - the index page should have a link to create a new wizard
- A user can click on a wizard's name and be routed to that wizard's show page
- A user should be able to see a show page for each wizard
    - the show page should show the wizard's name and image
    - the show page should show the wizard's favorite spells
    - the show page should have a button to edit the wizard
    - the show page should have a button to delete the wizard
    - the show page should have a button to add a favorite spell to the wizard
        - the `add favorite spell` button should send the user to a page that allows the user to add a spell from a dropdown menu
        - Once a spell is added, the user should be redirected back to that wizard's show page

`Spell`

- A user should be able to see a list of all spells by name in alphabetical order
- A user can click on a spell's name and be routed to that spell's show page
- A user should be able to see a show page for each spell
    - the show page should show the spell's name
    - the show page should show a list of all the wizards that this spell has
- A user should be able to create a new spell

`Favorite_Spell`

- A user should be able to create a new favorite spell and associate it with multiple wizards and multiple spells