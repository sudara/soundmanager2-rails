# SoundManager 2 for Rails 3

Easy and non-obtrusive way to get [SoundManager 2](http://www.schillmania.com/projects/soundmanager2/) as a dep for your rails3 project.

Note: This gem differs from glaszig's ["soundmanager-rails"](https://github.com/glaszig/soundmanager-rails) in that all it only exposes the js and swf files for usage in the asset pipeline. It does not auto-intialize soundmanager when required, nor change what is required based upon your env. It *only* exposes the assets for manual use and uses versioning that follows soundmanager2's development.  

## Installation

Add to Gemfile:

    gem 'soundmanager2-rails'

Run:

    $ bundle

## Usage

Add to application.js manifest:

    //= require soundmanager2


Or one of the other js files soundmanager2 provides:

    //= require soundmanager2-jsmin
    //= require soundmanager2-nodebug-jsmin
    //= require soundmanager2-nodebug


Assuming you are using the asset pipeline, you will need to at least tell rails to "precompile" the swf (same with the js too if you are using it as a standalone javascript anywhere)
 
    # config/application.rb
    config.assets.precompile += %w(soundmanager2.swf soundmanager2_flash9.swf)
    
You probably want to include some config. I normally have a "settings.html.erb" which allows me to use the asset_path helper to deliver the correct swf. It also lets me easily toggle debug mode, etc.

    soundManager.debugMode = false
    soundManager.flashVersion = 9
    soundManager.multiShot = false
    soundManager.url = "<%= asset_path('soundmanager2.swf') %>"
    soundManager.useHTML5Audio = true
    soundManager.consoleOnly = true


See the (SoundManager2 docs)[http://www.schillmania.com/projects/soundmanager2/doc/getstarted/#basic-inclusion] for info about how to initialize and use.

## Important

This gem only includes the cross-domain flash files (because that's what I use.)

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


  