# Park Finder

#### An api that returns National and State Parks.

#### By Emilio Gonzales

## Technologies Used

* _Ruby_
* _Rails_
* _RSpec_
* _Shoulda Matchers_
* _Will_Paginate_

## Description
_An api that will return to the user state and national parks, and their locations. This data is split into pages with 5 parks per page, and limiting output to "name" and "location" data._

## Setup/Installation Requirements
* _Clone this repository to your desktop_
* _Navigate to the top level of parks_lookup main branch and open in code editor_
* _run <code>postgres</code> in terminal_
* _to recreate the database:_
  >run <code>psql parks_lookup < database_backup.sql</code>
  ><br>_then run <code>createdb -T parks_lookup parks_lookup_test_</code>
* _run <code>bundle</code> in terminal to add gems_
* _run <code>rspec</code> in terminal to test code_
* _run <code>rails s</code> in terminal to test api_
* _append localhost:3000/parks with <code>?page=<page_number></code> to look at each page_


## Known Bugs
* _Search function isn't compatible with pagination_

## License
[MIT](https://choosealicense.com/licenses/mit/)

## Contact Information
Copyright (c) _2022_ _Emilio Gonzales_