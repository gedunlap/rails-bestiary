# Utilizing this Ruby on Rails / Postgresql CRUD API

An API platform such as [Postman](https://www.postman.com/) will be needed.

<img src="https://i.imgur.com/wRnnCqt.png" alt="wither-logo" width="400">

### Getting Started

Navigate to the [Heroku](https://rails-bestiary.herokuapp.com/entries) hosted index page.

A list of creatures from the world of the Witcher should be returned in JSON format.

Copy and past this URL into the API platform.

### Adding Creatures

The Schema is as follows:

    create_table "entries", force: :cascade do |t|
        t.string "category"
        t.string "name"
        t.string "sword"
        t.string "spell"
        t.datetime "created_at", precision: 6, null: false
        t.datetime "updated_at", precision: 6, null: false
    end

In order to add a creature the route must be set to POST.

<img src="https://imgur.com/rAmJLj9.jpg" alt="post-route" width="700">

Be sure to select the **'Body'** tab below the URL, set to **'raw'** and the dropdown menu to **'JSON'**.

Now write a JSON object following this Model to add a new creature.

    {
        "category":"string",
        "name":"string",
        "sword":"string",
        "spell":"string"
    }

* id and timespamps auto-generate.

<img src="https://i.imgur.com/DFoJMDg.png" alt="post-panther" width="600">

Press the blue **'Send'** button.

If entered correctly you will recieve a similar response in the API platform.

<img src="https://i.imgur.com/AI5kGQn.png" alt="response-panther" width="500">

On reload of the app page in the browser, the new creature is visible at the bottom.

Multiple creatures can be added at once by placing a comma between objects on entry.

    {
        "category":"string",
        "name":"string",
        "sword":"string",
        "spell":"string"
    },
    {
        "category":"string",
        "name":"string",
        "sword":"string",
        "spell":"string"
    },
    {
        "category":"string",
        "name":"string",
        "sword":"string",
        "spell":"string"
    }

### Updating Creatures

To update the creature from a Ghoul to an Alghoul, first change the route from **'POST'** to **'PUT'**.

<img src="https://i.imgur.com/HWEa5wD.png" alt="put-panther" width="400">

Next copy the **id** from the recently added creature, excluding quotations, and paste it after `/heroes/` in the URL.

* your id string will be different.

<img src="https://i.imgur.com/COYmMzC.png" alt="id-panther" width="600">

Now change the name in your input and press the blue **'Send'** button.

You will recieve a response showing your changes. Reload the app page to double check it worked.

<img src="https://i.imgur.com/wyrZhmI.png" alt="response-panther-2" width="500">

### Deleting Creatures

Once the beast has been hunted. Again change the route, this time to **'Delete'**, without changing the URL from before.

<img src="https://i.imgur.com/gWfdXTL.png" width="600">

Press the blue **'Send'** button. Reload the app page to see that Alghoul has slaughtered.

<img src="https://imgur.com/dQbYRHV.jpg" alt="thort" width="400">