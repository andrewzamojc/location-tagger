Location Tagger
===============

What words mean what
--------------------
pin: to pin a location is to save it to look up later
tag: tagging a pinned location means giving a word to associate with the location to search for later


Technical Plan
--------------
* AngularJS FE
* Parse backend (NodeJS when needed)
* Token Login (can upgrade to OAuth / facebook login later for fun)
* Google Maps api
* BEM + stylus
* Jade for HTML
* Coffeescript for js
* jasmine + karma for testing

Features
--------
* Login
* Pin the current location
** modify position
** add/delete tags
** most used tags listed for quick add
** can add photo, name
* Modify previous pin
* View saved pins
** on map
** in list
** filterable
* Can complete pins
* Can rate pins

Example Usage
-------------
User passes by a restaurant they've always wanted to try, but can't right now.
User opens the app, taps "Pin my location".
User sees a screen showing placement on map, can move pin to get correct placement. User hits ok.
User sees a form with fields for photo, name, tags, and a few quick tags common to the user.
User tags as "restaurant" and hits ok.
User sees alert "location pinned". User is returned to map view and can see the new pin on the map.

Later on that week, user wants to go out for dinner within a radius of current location (or another location).
User opens the app and navigates to Saved Pins > Filter.
User adjusts the filter to the desired radius (defaulted to something useful).
User also filters by the tag "retaurant" and only pins that are not "completed"
User finds the restaurant and enjoys the meal, so navigates back to this pin and rates it 5/5. User also marks it completed.

Later on that year, the user wants a restaurant that is reliable and tasty.
User opens the app and filters by the current location and radius, plus tagged "restaurant", completed and rated 4/5 or better.
User finds the restaurant on the map and knows it will be a good meal.

Screens
-------
1. Login screen
2. Tabbed View
..1. Map View
..2. List View
..3. Filter View