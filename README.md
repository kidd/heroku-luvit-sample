Sample Heroku luvit app
=======================

Sample luvit (http://luvit.io/) app for Heroku. Deployed at http://hello-luvit.herokuapp.com/

Based on https://github.com/Skomski/heroku-buildpack-luvit/tree/master/test

Usage
-----

    $ git clone git@github.com:cistov/heroku-luvit-sample.git

    $ cd heroku-luvit-sample

    $ heroku create --stack cedar --buildpack http://github.com/cistov/heroku-buildpack-luvit.git yourappname

    $ git push heroku master
    ...
    -----> Heroku receiving push
    -----> Fetching custom git buildpack... done
    -----> luvit app detected
    -----> Fetching Luvit version 0.4.0
    -----> Discovering process types
           Procfile declares types -> web
    -----> Compiled slug size: 1.5MB

Your luvit app will be detected if it has the file `package.lua` in the root.
