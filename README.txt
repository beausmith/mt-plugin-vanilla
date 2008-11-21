## Vanila, a plugin for Movable Type
## Author: Beau Smith, beau at sixapart com
## Version: 0.1
## Released under GPL

## OVERVIEW ##

    A series of template sets to learn about specific features in Movable Type.

## PREREQUISITES ##

    Requires Movable Type 4.2 for most features.

## FEATURES ##

    Template Sets

    1. Vanilla
        - Lastn entries on Homepage
        - Entry Detail

    2. Vanilla + Archives
        - Base homepage & entries
        - Archive Index
        - Archives: Monthly, Author, Category and Category-Monthly
        - Navigation w/ Category-Monthly links on Category Archives

    3. Vanilla + Pages
        - Base homepage & entries
        - Pages
        - Navigation including Pages

    4. Vanilla + Authentication & Userpics
        - En/disable userpics in javascript
        - Use of community "edit profile" script is necessary to add userpics. The "edit profile" page assumes that you are using profiles and thus links to "view profile" screen. If using profiles is not desired, the "view profile" link can be removed from the "Profile Edit" Global System Template.

    5. Vanilla + Comments
        - Authentication
        - Comments
        - Comment reply links
        - Comment Preview
        - Comment Response

    6. Vanilla + Comments w/ Userpics
        - Authentication w/ userpic
        - Comments w/ userpics
        - Comment reply links
        - Comment Preview
        - Comment Response
        - En/disable userpics in javascript
        - Use of community "edit profile" script is necessary to add userpics. The "edit profile" page assumes that you are using profiles and thus links to "view profile" screen. If using profiles is not desired, the "view profile" link can be removed from the "Profile Edit" Global System Template.

    7. Vanilla + Create Entry
        - Authentication
        - Create Entry
        - Entry Response

    8. Vanilla + Search & Tags
        - Tag Cloud and Search Form on Homepage
        - Entry Detail
        - Page Detail
        - Search Results Template
        - Notes:
            - Can someone explain how mt-search determines which search template to use for rendering results?  If it’s by the value of the IncludeBlogs input, which blog id takes precedence? Does the new mt-search still support the ExcludeBlogs input?
            - It’s IncludeBlogs.  It uses the first blog_id in the comma separated list.  And yes, ExcludeBlogs does work as it has been before.

    9. Vanilla + Assets
        - Recent assets on Homepage in various sizes and formats
        - lastn entries on Homepage with the first asset added to each as 70 pixel square
        - Entry Detail with assets in entries

    10. Vanilla + Widgets
        - Homepage with one widget set and individually included widget:
            - Search
            - Tag Cloud
            - Monthly Archives
            - Recent Entries
            - Page Listing
            - About Site
        - Entry Detail with a second widget set and individually included widget:
            - Search
            - Tag Cloud
            - Monthly Archives
            - About Site
    11. Vanilla + Scoring
        
        Tip: to remove all scoring for a particular namespace, use this SQL command:
        
            delete from mt_objectscore where objectscore_namespace = 'NAMESPACE';

    12. Vanilla + TypePad Connect Commenting
        - Sample implementation of TypePad Connect Commenting.
        - Abstracting Configuration into Module
        - Option for integrating MT and TP comments


## INSTALLATION ##

    Place the Vanilla plugin folder in the MT plugins folder

        $MT_DIR/
            plugins/
                Vanilla

## USAGE ##

    Install template sets in two ways:

    1. When creating a new blog, select the template set you wish to use
    2. Go to Design > Templates and select the "Refresh Templates" action link in the sidebar and choose the template set you wish to install

## KNOWN ISSUES ##

    Any issues with each template set are listed under each template set in the Features section above.

## SUPPORT ##

    There is no official support for this plugin, but you may email <beau at sixapart com> and/or mtos-dev@sixapart.com for assistance.

## SOURCE CODE ##

    Source

    SVN Repo:
    http://code.sixapart.com/svn/mtplugins/trunk/Vanilla

    Trac View:
    http://code.sixapart.com/trac/mtplugins/browser/trunk/Vanilla

    Plugins:
    http://plugins.movabletype.org/Vanilla (Not Yet Available)


## LICENSE ##

    GPL

## AUTHOR ##

    Beau Smith <beau at sixapart com> http://beausmith.com/
