=== ShiftNav - Responsive Mobile Menu ===
Contributors: sevenspark
Donate link: http://shiftnav.io/pro
Tags: responsive, menu, navigation, mobile, off-canvas, app, slide, sidebar
Requires at least: 4.0
Tested up to: 5.6
Stable tag: 1.7.0.1
License: GPLv2
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Add a native-style, off-canvas, responsive mobile navigation menu to your site.

== Description ==

ShiftNav is an awesome mobile menu for WordPress.  It looks and acts like native app off-canvas slide-out menus for popular apps like Facebook, Gmail, etc.

[ShiftNav Demo](http://shiftnav.io/free/) - see how it works

Get started: [ShiftNav Quick Setup Guide](http://sevenspark.com/docs/shiftnav-setup)

= Feature Overview =

* Native App-Style Menus
* Automatic Integration
* Light & Dark Skins
* Works with the WordPress 3 Menu System
* Touch-enabled
* CSS3 Transitions produce smooth animations on mobile devices
* Configurable

[Knowledgebase](http://sevenspark.com/docs/shiftnav)

Want to take your menu to the next level?  [Go Pro](http://shiftnav.io/pro)


= Browser Compatibility =

ShiftNav will open with a slide transition with browsers that support it.  For browsers that don't fully support CSS3 transforms, the menu will fall back to non-animated open/close functionality.


== Installation ==

Install ShiftNav just like any other WordPress plugin.

<a href="http://sevenspark.com/docs/shiftnav-setup">Full Installation & Setup Instructions</a>

== Frequently Asked Questions ==

Detailed documentation and FAQs can be found here: <a href="http://sevenspark.com/docs/shiftnav">ShiftNav Knowledgebase</a>

= How do I get started? =

Please see the [ShiftNav Quick Setup Guide](http://sevenspark.com/docs/shiftnav-setup)



== Changelog ==

= 1.7.0.1 =

* [Pro] Feature: Hide Toggle Bar when scrolling down
* Feature: Major keyboard accessibility features upgrade
* Feature: Added shiftnav-open and shiftnav-close Javascript events to panel
* Feature: Option to close panel immediately on link click
* Accessibility Enhancement: Close panel when focus leaves
* Accessibility Enhancement: Screenreader close button inside panel
* Accessibility Enhancement: Close panel on escape
* Accessibility Enhancement: Aria Label setting for toggle
* [Pro] Enhancement: Improve ScrollTo offset accuracy
* Enhancement: Handle current item ancestors when using UberMenu menu segments
* Enhancement: Improve gap logic
* Enhancement: Properly handle SVG image sizing when selected for panel Top Image
* Compatibility: Removed deprecated create_function() call; minimum PHP version 5.3
* Fix: Panel Title Font Weight setting
* Fix: Properly parse Android 10 to fix animation disabling
* Fix: Class duplication issue


= 1.6.3 =

* Feature: Disable Submenu setting
* Feature: Added 'shiftnav_op' filter
* Enhancement: Add auto-gap even if no breakpoint is set
* [Pro] Enhancement: Display connection errors if trouble communicating with update server
* Update: Add $depth parameter to nav_menu_link_attributes filter
* Update: Add $depth parameter to nav_menu_css_class filter


= 1.6.2 =

* Feature: Added shiftnav_main_toggle_icon_class filter
* Feature: Added shiftnav_main_toggle_content filter
* Enhancement: Better defenses against meddling themes
* Enhancement: Show re-activate license message when license status is inactive
* Enhancement: Set font size explicitly in stylesheets to eliminate shrinking font size inheritance
* Fix: Typo


= 1.6.1.2 =

* Fix: For new toggle padding CSS insertion compatibility enhancement, make sure it can work even if an optimizer externalizes the ShiftNav head style tag

= 1.6.1 =

* [Pro] Feature: Setting to choose the open and close icons for accordion menus
* Enhancement: Add body padding-top via a CSS style tag rather than directly applying styling to the body node, to improve compatibility with other themes/plugins controlling the body tag


= 1.6 =

* [Pro] Feature: Configure whether to automatically generate each secondary instance or not
* [Pro] Feature: Improved license updater to allow for re-checking and re-registration when necessary, and show expiration date
* Enhancement: Touch-off close setting now applies to search dropdown as well as menu panel
* Security hardening: Rewrite fragment handling to remove potential DOM-based (client-side) XSS (thanks, Martin Hall!)


= 1.5.2 =

* Enhancement: Reorganize code to better handle deferred and async javascript
* Enhancement: Add disable_content attribute to shiftnav_toggle shortcode
* Enhancement: Don't throw error when there's an invalid hash string



= 1.5.1.2 =

* UX Enhancement: Main toggle now closes open secondary menu
* jQuery 3 Compatibility Enhancement: Change .size() calls to .length
* Fix: Remove extraneous closing tag when using UberMenu Menu Segments in ShiftNav


= 1.5.1.1 =
* Fix: Properly handle UberMenu Menu Segments when they have been renamed by the user and using multiple segments

= 1.5.1 =
* Update: Update Font Awesome icons to 4.7

= 1.5 =
* Feature: Hamburger only toggle
* Feature: Transparent/overlapping toggle background
* Feature: RTL support
* Feature: Handle UberMenu Menu Segments (optionally)
* Enhancement: Configurable Back Button text
* Enhancement: jQuery 3 compatibility
* Enhancement: Make sure WP Admin Bar is layered on top when hovered
* Enhancement: Update Font Awesome to latest version
* Enhancement: Translations can be set in wp-content/languages folder
* Enhancement: Enable or Disable Gap override
* Enhancement: Stronger CSS resets to try to avoid styles from badly coded themes
* Various minor enhancements: admin bar line height, remove divs inside spans, remove ShiftNav waiting to load message (use window.load fallback), better arrangement/order of settings,

* [Pro] Feature: Disable Text on individual menu items (can use Icon only items now)
* [Pro] Feature: Search shortcode post_type now configurable
* [Pro] Feature: Custom Icon Class setting for using custom icon sets
* [Pro] Feature: Login/logout shortcodes
* [Pro] Enhancement: Add Display Panel Close Button setting to secondary instances
* [Pro] Enhancement: Allow Back Button to appear at top of Shift submenus optionally
* [Pro] Enhancement: Styled user profile for use in Toggle Bar


= 1.4 =
* Feature: Control setting via Customizer to take advantage of live preview
* Feature: Added optional Close button inside menu panel
* Feature: Independent hamburger button size setting
* Feature: Reset settings for each settings tab
* Feature: Added option to switch back button tag to span rather than anchor (to avoid interference from themes like Avada)
* Enhancement: Base submenu determination on child array rather than class to avoid being broken by themes that strip out core WordPress menu classes
* Enhancement: Allow non-px to be used for the Toggle Breakpoint, if desired
* Enhancement: Updated Font Awesome to v4.5
* Enhancement: Added additional notices in setting descriptions for clarity.
* Enhancement: Make loading more robust by falling back to window.load in case another script throws an error on document.ready
* Enhancement: Allow shortcodes in Image Link settings
* Enhancement: Handle child items of disabled items
* Enhancement: Avoid gap when opening menu panel


= 1.3.0.3 =
* Update to properly handle ignoring UberMenu advanced items and displaying their child items

= 1.3.0.2 =
* Enhancement: Improved scrolling on Android with latest version of Chrome
* Enhancement: Clear license data when deleted
* Fix: ScrollTo JS quotes corner case

= 1.3.0.1 =

* 1.3 deployment was missing /assets directory

= 1.3 =

* Feature: Fixed Toggle Buttons
* Feature: Default Toggle Styles
* Feature: ShiftNav Wrapper setting to define pre-existing shift wrapper
* Feature: Icon toggled class
* Feature: Ignore UberMenu Advanced items in ShiftNav, but still display child items
* Feature: Display ShiftNav only on mobile devices
* Feature: Allow shortcodes in Navigation Labels
* Feature: Ability to disable transforms
* Feature: Automatically auto play videos after shiftnav-wrap is added
* Feature: Fire shiftnav-loaded event
* Feature: Scroll To Offset setting
* Feature: Setting to make toggle entire bar vs just button
* Feature: Touch-off close as configurable setting
* Enhancement: Layer ShiftNav over admin bar
* Enhancement: Multiple breakpoint pixel widths rather than percentages
* Enhancement: Better UberMenu Conditionals compatibility
* Enhancement: Load ShiftNav after UberMenu
* Enhancement: When the main toggle bar is disabled, don't push down the WP Admin bar
* Enhancement: Padding tweaks
* Enhancement: Whitelist Android browsers rather than blacklist
* Enhancement: Avoid unintended opening with erroneous touchEnd events
* Enhancement: Make sure centered toggled bar content doesn\'t overlap toggle icon
* Enhancement: Prevent swipe-open above breakpoint


= 1.2 =

* Feature: Disable item setting
* Feature: Hide UberMenu setting
* Feature: UberMenu 3 Conditionals support
* Feature: Setting to kill filters from bad themes
* Feature: Set main toggle absolute or fixed
* Feature: Optional close button when menu is open
* Enhancement: Hide menu on IE7-8
* Enhancement: Improve ShiftNav toggle compatibility with admin bar
* Enhancement: Remove line height from shiftnav-wrap class
* Enhancement: Remove scrollbar when content is short


= 1.0.1 =

* Improved mobile device detection to fallback on devices that don't support CSS3 transforms

= 1.0 =

* Added unsaved changes alert to menu item in Menus Panel
* Updated admin styles to work better in Firefox.
* Allow shortcodes, HTML in toggle content
* Added spacing in Menu Panel when settings panel is active
* Added non-transform option (disable "Shift Body")
* Fixed overflow scrolling and dragging on iOS
* Moved menu bars icon depending on whether panel is left or right
* Added Custom CSS Tweaks setting
* Added active hover state setting
* Removed disable menu option to avoid confusion (pro only)
* Added Scroll Lock independently for horizontal and both


= 0.2 =

* Added Menu Bar Font Size Setting
* Automatically enlarge toggle font size below 960px
* Added Indent Always Visible Submenus option (per menu)
* Added Smooth Scrolling on iOS
* Added ability to disable menu
* Added menu item size adjustments (global)
* Added Disable Link ability

= 0.1 =

Initial Beta Release

== Upgrade Notice ==

= 1.3 =

Version 1.3 includes new features and enhancements

= 1.0 =

* Version 1.0 includes a lot of new features - update recommended for everyone

= 0.1 =

Initial Beta Release
