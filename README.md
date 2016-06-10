# Project Components

Live application: <http://michaelb167.github.io/plantr-front-end/index.html>

Front end repository: <https://github.com/MichaelB167/plantr-front-end>

## App Explanation

I've always been interested in the idea of self-sustainability to reduce our collective ecological footprint.  To that point I decided to make a gardening web-app so users (including myself) can easily track/care for plants in their garden, harvest plants when they are ready to eat, and eventually find recipes using those plants.

Upon signing up, users are automatically signed in and directed to a landing page.  Either by using the navbar or clicking through the index doorway, they can add plants with category, name, quantity and care note attributes.  They can also specify the date they were planted to get the number of days since planting, the date they can be potentially harvested to get the number of days until then, and their zip code if they want a brief weather forecast to know whether or not they need to water in the next few days.

After adding a plant, users can add more or view their plants by category along with the above mentioned attributes.  If they need to update information for any of the attributes they can do so, or delete the plant if it dies or they mistakenly entered it.  Once it is ready to harvest, they can click harvest to send it to their harvested plants page.  Later in development users will be able to search for recipes based on the plants they've harvested recently, but that feature isn't fully renderable in the browser yet. 

## Wireframes/Database Structure

Wireframes: <http://i.imgur.com/cOQQOVP.jpg>

Entity Relationships Diagram: <http://i.imgur.com/WZYh63M.jpg>

## Dependencies Installation

1.  HTTParty- `gem install httparty` (I had to manually put it in my gemfile and bundle install to fully load it)
