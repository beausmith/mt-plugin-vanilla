This file has descriptions of the MT javascript functions... sitting here in the hopes that it'll be part of a future Vanilla template set.

<$mt:var name="user-auth" value="signin-content"$>
<mt:Ignore>
    Set show_userpic to 1 to enable userpics in the signin line
    - Requires Community Solution
    - Note: This will update username to link to Community Solution "edit profile" script. This script assumes that you are using profiles and thus links to "view profile" screen. If the template set is not using profiles then the Community Solution "Profile Edit" Global System Template should be updated.
</mt:Ignore>
<$mt:var name="show_userpic" value="1"$>

/* MOVABLE TYPE CORE JAVASCRIPT *****************************************************************/

/* Legacy Function Mappings *****************************************************************/
/* The following functions are here to support legacy MT templates. If you have refreshed your JavaScript template but still use olderMT comment templates, you may need to uncomment this block in orderfor those templates to work properly. Simply remove the wrapping'mt:Ignore' tag to do so. */
function hideDocumentElement(id) { return mtHide(id) }
function showDocumentElement(id) { return mtShow(id) }
function individualArchivesOnLoad() { return mtEntryOnLoad() }
function writeCommenterGreeting() { return mtShowGreeting() }
function rememberMe(f) { return mtRememberMe(f) }
function forgetMe(f) { return mtForgetMe(f) }
function getXmlHttp() { return mtGetXmlHttp() }

/* Blog Variables *****************************************************************/
var is_preview;
var user;

/* Utility Functions *****************************************************************/
    function mtHide(id) // Simple routine for showing a DOM element (applying a CSS display attribute of 'none').
    function mtShow(id) // Simple routine for showing a DOM element (applying a CSS display attribute of 'block').
function mtFireEvent(eventName,param) // Calls the event named, if there are handlers for it.
function mtFixDate(date) // **
function mtEscapeJS(s) // Simple function that escapes single quote characters for storing in a cookie.
function mtUnescapeJS(s) // Simple function that unescapes single quote characters that were stored in a cookie.
function mtAttachEvent(eventName,func) // A utility function for assigning/adding handlers to window events.
function mtGetXmlHttp() // Returns a XMLHttpRequest object (for Ajax operations).

/* Authentication Functions *****************************************************************/
var mtCookieName = "<$mt:UserSessionCookieName$>"; // The cookie name to use for storing the blog-side comment session cookie.
var mtCookieDomain = "<$mt:UserSessionCookieDomain$>";
var mtCookiePath = "<$mt:UserSessionCookiePath$>";
var mtCookieTimeout = <$mt:UserSessionCookieTimeout$>;
function mtSetCookie(name, value, expires, path, domain, secure) // Sets a browser cookie.
function mtGetCookie(name) // Retrieves a browser cookie.
function mtDeleteCookie(name, path, domain, secure) // Deletes a browser cookie.
function mtBakeUserCookie(u) // Serializes a user object into a string, suitable for storing as a cookie.
function mtUnbakeUserCookie(s) // Unserializes a user cookie and returns a user object with the restored state.
#_login/#_logout // If request contains a '#_login' or '#_logout' hash, use this to also delete the blog-side user cookie, since we're coming back from a login, logout or edit
function mtSaveUser(f) // Persists a copy of the current user cookie into the browser cookie stash.
function mtClearUser() // Clears the blog-side user cookie.
profile operation.
function mtFetchUser(cb) // Issues a request to the MT comment script to retrieve the currently logged-in user (if any).
    function mtUpdateSignInWidget(u) // A routine that displays various phrases based upon users authenticated status (works with Sign In Widget)
function mtGetUser() // Retrieves an object of the currently logged in user's state. If no user is logged in or cookied, this will return null.
function mtSignIn() // Handles the action of the "Sign in" link. First clears any existing user cookie, then directs to the MT comment script to sign the user in.
function mtSignInOnClick(sign_in_element) // **Handles the action of the "Sign in" link.
function mtSetUserOrLogin(u) // **Handles branching between users cookied in app vs not logged in
function mtSignOut(entry_id) // Handles sign out from the web site. First clears any existing user cookie, then directs to the MT comment script to sign the user out.
function mtSignOutOnClick() // Handles the action of the "Sign out" link.

    /* Commenting *****************************************************************/
    function mtEntryOnLoad() // Called when an entry archive page is loaded. This routine controls which elements of the comment form are shown or hidden, depending on commenter type and blog configuration.
    function mtEntryOnUnload() // **
    mtAttachEvent('usersignin', mtUserOnLoad); // **

    function mtShowGreeting() // Handles the display of the greeting message, depending on what kind of user is logged in and blog comment policy.
    function mtRememberMeOnClick(b) // Called when the 'Remember me' checkbox is changed. If the checkbox is cleared, the cached user cookie is immediately cleared.
    function mtReplyCommentOnClick(parent_id, author) // Handles the action of the 'Reply' links.
    function mtSetCommentParentID() // Sets the parent comment ID when replying to a comment.

    function mtCommentOnSubmit(f) // Called when comment form is sent. Required parameter: Form DOM object of comment form. If form has a 'bakecookie' member, it will be used to signal storing the anonymous commenter information to a cookie. If form has a 'armor' member, it will be used to store a token that is checked by the comment script.
    function mtCommentSessionVerify(app_user) // **
    function mtUserOnLoad() // **Function to hide/show/prepopulate fields based upon type of user that has authenticated

    function mtCommentFormOnFocus() // Called when an input field on the comment form receives focus.
    function mtShowCaptcha() // Displays a captcha field for anonymous commenters.

    <mt:Ignore>
    /* user object
        -- saved in user cookie --
        u.name (display name)
        u.url (link to home page)
        u.email (for anonymous only)
        u.userpic (url for commenter/author)
        u.profile (link to profile)
        u.is_trusted (boolean)
        u.is_author (user has posting rights)
        u.is_banned (banned status; neither post/comment perms)
        u.can_post (has permission to post)
        u.can_comment (has permission to comment)

        -- status fields --
        u.is_authenticated (boolean)
        u.is_anonymous (user is anonymous)
    */
    </mt:Ignore>

/* Initialize *****************************************************************/
function mtInit() // Initialize

/* Edit Entry *****************************************************************/
function mtEditLink(entry_id, author_id) // Used to display an edit link for the given entry.

/* Date Formatting *****************************************************************/
function mtRelativeDate(ts, fds) // Displays a relative date. 'ts' is a Date object, 'fds' is a string of the date which will be displayed if the given date is older than 1 week.
    // ** extra closing "}" after this function

/* END Movable Type Core Javascript *****************************************************************/



/* MOVABLE TYPE COMMUNITY SOLUTION FUNCTIONS *****************************************************************/

function conditional_block(cond, id) // **

function mtScore(entry_id) // Functions for scoring entries. Scoring requires blog context, it is thus conditioned.
function mtUpdateScores() // **
function mtScore_cb(s_hash) // **

function insert_score(s_hash, id, div_id, span, span_else) // Legacy functions for favoriting entries
var favorite_cb_callbacks = [];
function favorite_cb(s_hash) // **
function anchor(id, eid, cl, score) // **
function attachEvent(element, eventName, func) // **
function favorite(evt, entry_id, score_span) // **

function script_follow(id) // Functions to follow/leave feature
function script_leave(id) // **
function follow(user_info) // **
function leave(user_info) // **

// Utility functions
req = null; // ** Not used anywhere?
function getCommenterName() // **
function trimString (str) // **
DOM // ** review
function switchTabs( id, el ) // **
function defaultInputFocus( event ) // **
function defaultInputBlur( event ) // **
function setupInputDefault() // **
function mtSetUser(u) // Assigns a user object as the actively logged in user; also saves the user information in a browser cookie.
