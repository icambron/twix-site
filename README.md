This site turns the Twix.js docs found [here](https://github.com/icambron/twix.js/blob/master/docs/docs.md) into the website found [here](http://isaaccambron.com/twix.js/). That allows me to keep the doc content in the main repo and the HTMLy stuff elsewhere. So unless you want to provide *style* patches to the site, you probably want to go to the main Twix.js repo.

```
git clone --recursive git@github.com:icambron/twix.js.git

bundle install
bundle exec middleman server
```
