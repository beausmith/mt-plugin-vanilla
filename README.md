# Vanilla

## Overview

Vanilla provides various template sets which contain the minimal amount of code necessary to show a specific feature in Movable Type. These template sets are not indended to be used for publishing your blog, rather they to be used for learning how to add a particular feature.

## Prerequisites

* **Movable Type 4.2** for most features
* **Score Plugin** for Vanilla + Scoring template set

## Usage

1. Create a new test blog using the template set with the desired feature. Perhaps call it "Vanilla"
2. Add content to Vanilla blog based upon requirements of feature
    * create entries in the past to use **Vanilla + Archives**
    * add comments for **Vanilla + Comments**
    * upload images to use **Vanilla + Assets**
3. Republish the Vanilla blog
4. Copy necessary template code for desired features into your production blog

## Tips

* When pasting templates with \_trans tags, MT will convert all translation strings upon save. So you can also [browse the templates](https://github.com/beausmith/mt-plugin-vanilla/tree/master/plugins/Vanilla/templates) and then copy/paste them into MT template editing screen. _Of course this tip applies to all template sets_

## Templates Sets

1. **Vanilla**
    * Lastn entries on Homepage
    * Entry Detail
2. **Vanilla + Archives**
    * Base homepage & entries
    * Archive Index
    * Archives: Monthly, Author, Category and Category-Monthly
    * Navigation w/ Category-Monthly links on Category Archives
3. **Vanilla + Pages**
    * Base homepage & entries
    * Pages
    * Navigation including Pages
4. **Vanilla + Authentication & Userpics**
    * En/disable userpics in javascript
    * Use of community "edit profile" script is necessary to add userpics. The "edit profile" page assumes that you are using profiles and thus links to "view profile" screen. If using profiles is not desired, the "view profile" link can be removed from the "Profile Edit" Global System Template.
5. **Vanilla + Comments**
    * Authentication
    * Comments
    * Comment reply links
    * Comment Preview
    * Comment Response
6. **Vanilla + Comments w/ Userpics**
    * Authentication w/ userpic
    * Comments w/ userpics
    * Comment reply links
    * Comment Preview
    * Comment Response
    * En/disable userpics in javascript
    * Use of community "edit profile" script is necessary to add userpics. The "edit profile" page assumes that you are using profiles and thus links to "view profile" screen. If using profiles is not desired, the "view profile" link can be removed from the "Profile Edit" Global System Template.
7. **Vanilla + Create Entry**
    * Authentication
    * Create Entry
    * Entry Response
8. **Vanilla + Search & Tags**
    * Tag Cloud and Search Form on Homepage
    * Entry Detail
    * Page Detail
    * Search Results Template
9. **Vanilla + Assets**
    * Recent assets on Homepage in various sizes and formats
    * lastn entries on Homepage with the first asset added to each as 70 pixel square
    * Entry Detail with assets in entries
10. **Vanilla + Widgets**
    * Homepage with one widget set and individually included widget:
        * Search
        * Tag Cloud
        * Monthly Archives
        * Recent Entries
        * Page Listing
        * About Site
    * Entry Detail with a second widget set and individually included widget:
        * Search
        * Tag Cloud
        * Monthly Archives
        * About Site
11. **Vanilla + Scoring** (beta)

    This template set works, but needs to be updated to take advantage of the latest updates to the [Scoring Plugin which is available via SVN only](http://code.sixapart.com/svn/mtplugins/trunk/Score/).

    Tip: to remove all scoring for a particular namespace, use this SQL command:

        delete from mt_objectscore where objectscore_namespace = 'NAMESPACE';

12. **Vanilla + TypePad Connect Commenting**
    * Sample implementation of TypePad Connect Commenting.
    * Abstracting Configuration into Module
    * Option for integrating MT and TP comments


## Installation

    $MT_DIR/
        plugins/
            Vanilla/

## Known Issues

Any issues with each template set are listed under each template set in the Features section above.

## Support

There is no official support for this plugin, but you may email beau at sixapart com and/or mtos-dev@sixapart.com for assistance.

## Bugs

Please email beau at sixapart com.

## Revision History

<dl>
    <dt>b3 - 2009 Jun 05</dt>
    <dd>Beta 3 Release: Typo in yaml. Updates to readme.</dd>
    <dt>b2 - 2008 Nov 21</dt>
    <dd>Beta 2 Release: Widgets, Scoring, TypePad Connect</dd>
    <dt>b1 - 2008 Sep 04</dt>
    <dd>Beta 1 Release</dd>
</dl>

### Developers
* [Beau Smith](http://beausmith.com) at [Six Apart](http://www.sixapart.com)