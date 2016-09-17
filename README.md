#Routine MVC

###About

Welcome to the Routine MVC! A simple CRUD app, built using Sinatra and a standard MVC file structure. Create, edit, and keep track of your routines, schedules, and tasks.

###Dependencies

This app was built using Sinatra 1.5.7 and a sqlite3 database. It requires both the ```activerecord``` and ```sinatra-activerecord``` gems, in order to utilize sqlite3 with Sinatra.


###Getting Started

To use this app, first clone this repository.

Run ```bundle install``` to install dependencies, then ```rake db:migrate``` and ```rake db:seed``` to set up and seed your database.

Then, run ```shotgun``` in your console, and open your browser's localhost.

###Users, Routines, and Tasks

Once the app is up and running, and you have logged in or signed up, you can view your existing routines, or create a new one. Each routine has a schedule (i.e. Monday, Wednesday, Friday) and tasks (i.e. clean, study, exercise), and is visible only to the user who created the routine. Set up multiple routines, or just one, and edit or delete as you see fit. Log out to end your session.

Enjoy!

###Contributors

 Pull requests are welcome.  Contributors, please adhere to the [Contributor Covenant code of conduct](http://contributor-covenant.org/).

###License

The MIT License (MIT)

Copyright (c) 2016 Lindsey Wells

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
