---
title: De-Clouding My Digital Data
subtitle: I'm on a mission to un-app and de-cloud my data. These are my notes on how it's going.
...

Intro
-----

### Why

Many apps that touch your data these days try to be all-in-one solutions. You create the content using the Official™ App, it keeps your data on the Official™ Servers, and you only access and manage it from there using either the Official™ App or Official™ Website. In some cases there's an Official™ API you can use to upload and maybe even download your data using a third-party program. Examples: Evernote, LastPass, Pocket, Google Photos, etc.

The problem with putting all my stuff into apps and clouds is that these tend to [go away unexpectedly](https://ourincrediblejourney.tumblr.com/). Another problem for me is that these apps tend to have poor or non-existent Linux support.

Since it's such a hot topic these days I should note: privacy is not a primary motivation for this effort. I'm not too worried about companies spying on me or what they're doing with my data. I just want my data to be resilient, portable, and compatible.

### How

- Prefer flat files as primary storage (avoid too much reliance on databases and complicated management services, especially ones I can’t control)
- Prefer common, time-tested data formats
- Use generic, swappable file syncing solutions
- Use open-source apps to edit & manage the files

For any solution to be useful to me, both Linux and Android support are must-have. Bonus points for apps that are open-source, particularly for Android apps available via F-Droid.

I also consider Mac OS and iOS support important, but since I don't use those every day I’m happy to accept untested “theoretical” support for them in most cases. For posterity theoretical Windows support is also nice but I don’t see myself needing or wanting to test that any time soon.


Stable Solutions
----------------

These are systems I've been using for a while and are as “feature-complete” as I need them to be.

### Note taking

I keep a lot of notes and have tried all kinds of different systems: Linux desktop go-tos like KJots & TomBoy, mainstream classics like Evernote & OneNote, and more unique tools like Workflowy and Google Keep. The one I proably used most was Evernote, until about 16 months ago when I just exported it all to plain text. (This was easy since I don't use many photos/screenshots/scans in my note-taking.)

**Format:** Plain text / Markdown

**Sync:** Syncthing

**Apps:** [QOwnNotes](http://www.qownnotes.org/) (Linux, QT), [P.S. Notes](https://burnsoftware.wordpress.com/p-s-notes/) (Linux, GTK), [JotterPad](https://2appstudio.com/jotterpad/) (Android)

### To-Do List

I’ve used Google Tasks, Wunderlist, Remember the Milk, TaskWarrior, the todo features in Evolution and KMail, and a whole bunch of other things. I don't need fancy features, just a place to keep & prioritize my immediate to-dos. (Longer-term tasks stay in project notes or GitHub issue trackers.)

My to-dos are pretty ephemeral so this one isn't so much about data longevity/resilience, just simplicity and compatibility across lots of apps & platforms.

**Format:** [Todo.txt](http://todotxt.com/). The simple system of contexts and projects works well for me and there are loads of compatible clients on all platforms. And of course the todo list is stored as a single plaintext file that I can easily read & edit manually if needed.

**Sync:** Syncthing. I keep the Todo.txt and Done.txt files in a subdirectory of my main markdown notes folder.

**Apps:** [Go For It!](http://manuel-kehl.de/projects/go-for-it/) (Linux, GTK), [SimpleTask Cloudless](https://f-droid.org/repository/browse/?fdid=nl.mpcjanssen.simpletask) (Android), [Todo.txt GNOME Shell Extension](https://extensions.gnome.org/extension/570/todotxt/)

### Email

Like a lot of people I’ve been using Gmail since it’s 2004 debut. Woes:

- weird/ugly IMAP issues, Google increasingly focusing on custom APIs over open protocols
- requires special support from 3rd-party clients to work well
- overly aggressive spam filter (I was missing _a lot_ of legitimate mailing list threads)
- inefficent and annoying web UI

I still need to rely on a third-party service for email since I have no desire to run my own mail server. I chose FastMail because it’s been around a long time and everyone who uses it seems to have nice things to say about it. Their 30 day free trial completely sold me and I pre-paid for 3 years, which came to $100 for their standard plan.

Migrating 12 years of email from Google to FastMail was surprisingly painless (there’s basically a 1-click button to do it). Migrating all my friends/family/accounts off of my Gmail _address_ of 12 years is a much harder task that I’ve barely made a dent in so far. I probably won't ever be able to turn off auto-forwarding from my old GMail address, but that’s fine. I still need a Google account for certain things anyway.

**Sync:** FastMail, IMAP

**Apps:** FastMail Web & Android clients, Pantheon Mail (Linux, GTK), Boxer (Android)


In Progress
-----------

These are systems that I’m using but aren’t fully complete or tested yet. I still partially rely on proprietary cloud systems for some of them.

### Passwords

My inital app/cloud solution was LastPass. I was using this vs other options like 1Password mainly because it's one of the few mainstream password managers that supports Linux, Mac OS, and Android. I used KeePassX for a while, but the few available clients all had clunky dated interfaces and that were difficult to use.

The solution I've settled on for now is [pass](https://www.passwordstore.org/) (“the standard unix password manager”) with files synced in git. The basic idea is you have a folder full of GPG-encrypted plaintext files, 1 per password. The first line of the file is the password, and any additional lines are optional arbitrary notes. (I usually add `login: <username>` and `url: <website>` where applicable.)

I have a custom bash script that gives me a [rofi](https://davedavenport.github.io/rofi/) interface to my passwords with a global `Cmd-P` shortcut.

**Sync:** Git, GitHub

**Apps:** [pass](https://www.passwordstore.org/) (CLI), [Android App?](https://f-droid.org/repository/browse/?fdid=com.zeapo.pwdstore)

**To-do:** This is still "in progress" because I don't have an Android solution totally worked out yet. There is a pass-compatible apps available but I haven't been able to get one properly set up yet (the encryption via GPG key makes this a little complicated).


### Music

I have a collection of MP3 ang OGG files I've been growing since high school (mostly legit CD rips & digital purchases). My playlists are simple M3U files, which are essentially just plaintext newline-delimited lists of relative file paths. Everything is organized in a particular way I like hand have been using for years. (Excuse me while I reminisce about the days when I had a 5th-gen iPod running [Rockbox](http://www.rockbox.org/)… editing playlists on-device, custom skins, no need for iTunes! It was glorious. Look at [this list of plugins](http://download.rockbox.org/daily/manual/rockbox-ipodvideo/rockbox-buildch12.html) - there's _Doom and a Gameboy emulator_.)

**Formats:** MP3 & OGG audio, M3U playlists, JPG & PNG album art

**Sync:** None yet. I keep a primary copy of my music library on a 128GB SD card that I can plug into whatever computer I'm working on. It’s backed up, but not regularly or automatically yet.

**Apps:** [MPD](https://www.musicpd.org/), [Cantata](https://github.com/cdrummond/cantata) (Sidenote: mpd is extremely graceful about handling a music library on a drive that is being constantly un- and re-mounted. I can pause, unplug the SD card, close my laptop, plug the SD card in the next day, and resume playing the paused track.)

**To-do:** I don't have a good way to selectively sync & play certain tracks and playlists on my phone. I do have a Spotify subscription, and I probably won't get rid of it any time soon since I think Spotify is great simply as a music discovery service. Maybe all I need is something to convert and synchronize my M3U playlists to Spotify playlists?

### General File Syncing

I used to use Dropbox for everything. I've moved a lot over to Syncthing which has some pros and cons compared to Dropbox.

Pros: Synced folders can be anywhere, not just subfolders. No central server: private data never has to leave your control.

Cons: More complicated to understand & set up. No central server: multiple machines must be online in order to sync. Sync can be slow to initiate, especially when not on the same LAN.

**To-do:** I’d like to check out [SparkleShare](https://www.sparkleshare.org/) for syncing plain text files. [Librevault](https://librevault.com/) could also be interesting.

Needs A Solution
----------------

These are problem areas that I want to address soon but have made little/no progress on so far.

### Address Book

No idea what to do here. Right now it's all in Google.

### Read Later / Article Archive

I used to use Instapaper. Somewhere along the line I switched to Pocket (I don't recall what prompted the switch). I’m not sure the best way to take control of this yet.

I put articles in Pocket for at least 1 of 3 reasons:

- I want to read the article immediately, but I need it to be more readable (poor formatting / font choice on the original site)
- I want to read the article later, possibly offline on a different device
- I have already read the article and I want to save it for future reference

The challenge is that I only want the unread articles to be available offline on my mobile devices (due to space constraints), but I'd still like to be able to access the full archive if I’m online.

[Wallabag](https://www.wallabag.org/) is an open-source alternative, but a little more complicated than I’d like. Maybe just something that extracts the main content from a webpage into an ePub or similar that I can sync?


Blue Sky
--------

These are areas that would be possibly be nice to have more direct control over, but I’m happy with current cloud/app solutions and am not too concerned about losing critical data or being unable to easily migrate to different services.

### Feed Reader

I used to use Google Reader. I was horrified when it went away. Now I use Feedly to keep up with my RSS feeds. In fact, I like it so much I support them with a Feedly Pro subscription.

One concern I have about Feedly (apart from the general “it’s a cloud service that could go away”) is that it has no support for mobile browsing without using their official Android or iOS clients. I noticed this when I was testing out Ubuntu Touch - visiting the Feedly website all I got was a link to the Google Play store, which of course was useless and frustrating.

### Podcasts

I use PocketCasts on my phone. I don't really need things synced across devices, and if I want to switch apps in the future I can just export & import a OPML file. Losing the listened/unlistened for each episode would be a minor annoyance.

Of course if there’s a really great open-source / flat-file solution out there I’ll definitely look into it.

### Photos

My photo library is split into 2 pieces: photos taken from mobile devices live in Google Photos, and photos taken from my SLR are in a manually-managed directory structure on a USB drive.

The SLR photos are organized by date and event/location, with the RAW/JPG names unchanged from what they were in the camera. Eg `2014/07-16 Camping/IMG_1234.crw`.

I have no particular way of browsing my SLR photos or doing any kind of content tagging. I don’t take photos much these days so it’s not a priority for me.

### Web Bookmarks

Web searching is so good these days I don’t usually bother bookmarking sites. But I do keep a collection of links in [Pinboard](https://pinboard.in/). Because of the simplicity and history of the service, I’m not too concerned about it going away unexpectedly or being a pain to migrate away from.
