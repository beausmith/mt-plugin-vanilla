<$mt:var name="user-auth" value="signin-content"$>
// The cookie name to use for storing the blog-side comment session cookie.
var mtCookieName = "<$mt:UserSessionCookieName$>";
var mtCookieDomain = "<$mt:UserSessionCookieDomain$>";
var mtCookiePath = "<$mt:UserSessionCookiePath$>";
var mtCookieTimeout = <$mt:UserSessionCookieTimeout$>;
var is_preview;
var user;

var mtFetchedUser = false;
function mtFetchUser(cb) // Issues a request to the MT comment script to retrieve the currently logged-in user (if any).
function mtUpdateSignInWidget(u) // A routine that displays various phrases based upon users authenticated status
function mtGetUser() // Retrieves an object of the currently logged in user's state. If no user is logged in or cookied, this will return null.
function mtSetUser(u) // Assigns a user object as the actively logged in user; also saves the user information in a browser cookie.
function mtSaveUser(f) // Persists a copy of the current user cookie into the browser cookie stash.
function mtSignIn() // Handles the action of the "Sign in" link. First clears any existing user cookie, then directs to the MT comment script to sign the user in.
function mtSignInOnClick(sign_in_element) //
function mtSetUserOrLogin(u) //
function mtSignOut(entry_id) // Handles sign out from the web site. First clears any existing user cookie, then direts to the MT comment script to sign the user out.
function mtSignOutOnClick() // Handles the action of the "Sign out" link.

/* Cookie *****************************************************************/

function mtSaveUser(f) // Persists a copy of the current user cookie into the browser cookie stash.
function mtClearUser() // Clears the blog-side user cookie.
function mtSetCookie(name, value, expires, path, domain, secure) // Sets a browser cookie.
function mtGetCookie(name) // Retrieves a browser cookie.
function mtDeleteCookie(name, path, domain, secure) // Deletes a browser cookie.
function mtBakeUserCookie(u) // Serializes a user object into a string, suitable for storing as a cookie.
function mtUnbakeUserCookie(s) // Unserializes a user cookie and returns a user object with the restored state.

/* Utility Functions *****************************************************************/

function mtFireEvent(eventName,param) // Calls the event named, if there are handlers for it.
function mtFixDate(date) // 
function mtEscapeJS(s) // Simple function that escapes single quote characters for storing in a cookie.
function mtUnescapeJS(s) // Simple function that unescapes single quote characters that were stored in a cookie.
function mtAttachEvent(eventName,func) // A utility function for assigning/adding handlers to window events.
