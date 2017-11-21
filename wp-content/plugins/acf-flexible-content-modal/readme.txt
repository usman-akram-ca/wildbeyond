=== Plugin Name ===
Contributors: edir
Tags: acf, advanced-custom-field, flexible-content
Requires at least: 4.5.2
Tested up to: 4.6.1
Stable tag: 1.1.2
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Make ACF Flexible Content editing the content of each layout using a Modal window.

== Description ==

Make ACF Flexible Content editing the content of each layout using a Modal window.

The button to collapse the layout's elements will be replaced to a Edit button, the fields will be opened inside a Modal window. This will let you order the list of layouts easily and to fill the fields separately.

== Installation ==

1. Upload the plugin files to the `/wp-content/plugins/acf-fc-modal` directory, or install the plugin through the WordPress plugins screen directly.
2. Activate the plugin through the 'Plugins' screen in WordPress

== Frequently Asked Questions ==

= How to name each flexible content layout? =

If you want to name each of the flexible content layout, you can use the ACF hook [acf/fields/flexible_content/layout_title](https://www.advancedcustomfields.com/resources/acf-fields-flexible_content-layout_title/).

== Screenshots ==

1. Free layouts list to order easily.
2. Modal window to fill the contents.

== Changelog ==

= 1.1.2 =
* Nested FC bugfix.
* Edit button fix for ACF 5.5.

= 1.1 =
* Limit width of the modal window to do not create too large fields.
* All layouts starts collapsed when open the page to edit.

= 1.0 =
* First release
