# SoundManager2 for Rails 3

Easy and non-obtrusive way to get [SoundManager2](http://www.schillmania.com/projects/soundmanager2/) as a dep for your rails3 project.

Note: This method differs from ["soundmanager-rails"](https://github.com/glaszig/soundmanager-rails) in that all it does is expose the js and swf files for usage in the asset pipeline. It does not auto-intiialize soundmanager when you require it, nor change what is required based upon your env. It *only* exposes the assets for manual use.  

## Installation

Add to Gemfile:

    gem 'soundmanager2-rails'

Run:

    $ bundle

## Usage

Add to application.js manifest:

    //= require soundmanager2


Or one of the other js files soundmanager2 provides:

    vendor/assets/javascripts/soundmanager2-jsmin.js
    vendor/assets/javascripts/soundmanager2-nodebug-jsmin.js
    vendor/assets/javascripts/soundmanager2-nodebug.js

## Important

This gem only includes the cross-domain flash files because that's what I use.

## Versions

### Locking

Versions of soundmanager2-rails follow soundmanager2 versioning to make life more understandable.

Example:

The current soundmanager2 version at time of this readme is 2.97a.20120916

In gemfile, you can specify:

    # Note: we can't include an "a" in the Minor version, since afaik gems don't support it
    gem "soundmanager2-rails", "2.97.20120916"
    
### Not up to date?

Send a pull request or bug me on github.


## Misc

Made for [alonetone](http://github.com/sudara/alonetone) and [Ramen Music](http://ramenmusic.com). 

Apologies to glaszig for "doing the same thing." (I wanted to try my hand at an assets gem, and specifically wanted to match soundmanager2 versions so my apps can share deps clearly and cleanly!)


  