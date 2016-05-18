Heroku buildpack: AWS CLI
=========================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) that
allows one to run AWS CLI in a dyno alongside application code.

Usage
-----

Example usage:

    $ heroku config:add BUILDPACK_URL=https://github.com/trustradius/heroku-buildpack-awscli.git
