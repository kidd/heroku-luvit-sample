Sample Heroku luvit app
=======================

Usage
-----

    $ heroku create --stack cedar --buildpack http://github.com/cistov/heroku-buildpack-luvit.git

    $ git push heroku master
    ...
    -----> Heroku receiving push
    -----> Fetching custom buildpack... done
    -----> luvit app detected
    -----> Fetching Luvit version 0.3.1
    -----> Discovering process types
           Procfile declares types -> web
    -----> Compiled slug size is 1.1MB

Your luvit app will be detected if it has the file `package.lua` in the root.
