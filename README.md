YouTube Mendix Widget
=========

This widget allows youtube links stored in a String attribute of an entity, be displayed 
as an embedded YouTube player.  

Key features:
  - Easily add list of videos to your pages
  - Simple to use
  - Takes data from context


Version
----

1.0

Author
----
Simon Martyr 
simon.martyr@finaps.nl 
March 2015. 


Usage
--------------

```sh
Create an entity that has an attribute String
Put the widget within a data view of that given entity
point towards your url attribute (the String)

This url should be the embed url of the video you wish to use.
For example:

if you wish to use - https://www.youtube.com/watch?v=dQw4w9WgXcQ
then click Embed (screenshot below) and find the embed url which would 
look similar to - https://www.youtube.com/embed/dQw4w9WgXcQ
the usual format for the url is: 
 https://www.youtube.com
 /embed/
 video id - aka the number after watch?v= in this example dQw4w9WgXcQ

```

Example URL & Use case
----------------
![Share URL](http://i.imgur.com/iuTZZow.png)


Use the URL from the  'Embed' tab as your video URL.

![Example use](http://www.pfvdw.com/sites/default/files/blog-images/tut1_figure_0.png)


Example use case. 

License
----

MIT


