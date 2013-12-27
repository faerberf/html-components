# HTML Components
===============

[![Build Status](https://drone.io/github.com/szgabsz91/html-components/status.png)](https://drone.io/github.com/szgabsz91/html-components/latest)

HTML Components is a reusable component library written in HTML and Dart based on the functionality of the Primefaces JSF component library.

## Usage

If you want to try HTML Components, include this fragment in your `pubspec.yaml` file:

    dependencies:
      html_components: any

The library can be used in HTML and Dart.

For using the components in your HTML page, first you must import the component in the `head` section of the page, then put an instance of the component on your page.

A basic example:

    <!DOCTYPE html>
    <html>
      <head>
        <title>Utility - Clock</title>
        <link rel="import" href="packages/html_components/utility/clock.html">
        <script type="application/dart">export 'package:polymer/init.dart';</script>
        <script src="packages/browser/dart.js"></script>
      </head>
      <body>
       <h-clock size="500"></h-clock>
      </body>
    </html>

If you want to interact with the components in Dart, you must import the component class like this:

    import 'package:html_components/utility/clock.dart';

Alternatively, you can import the whole library that includes every class you might need:

    import 'package:html_components/html_components.dart';

It is recommended to create your custom elements if you want to listen for component events or bind HTML attributes to your Dart objects, because Polymer Expressions don't work outside of custom elements.

## Examples

For more examples and code samples, please visit this page: http://szgabsz91.github.io/html-components

Here you can find most of the use cases of the components.

The pages are not designed properly yet, but they are good to give an insight what this library is all about.

## Migrated Components

The list of components that are already migrate from the old Web UI framework to Polymer.dart:

* Data Components
	* Tag
	* Tagcloud

* Dialog Components
	* Confirmation Dialog
	* Dialog

* Input Components
	* Boolean Button
	* Masked Input
	* Rating
	* Select Item
	* Select Button
	* Select Checkbox Menu

* Menu Components
	* Breadcrumb
	* Context Menu
	* Menubar
	* Menu Button
	* Menu Item
	* Menu Separator
	* Split Button
	* Submenu

* Multimedia Components
	* Gallery
	* Image Compare
	* Lightbox
	* Photocam

* Panel Components
	* Accordion
	* Panel
	* Tab
	* Tabview

* Utility Components
	* Clock
	* Draggable
	* Growl
	* Growl Message
	* Item Template
	* Notification Bar
	* Resizable

## Components to be Migrated

There are many components to be migrated. For a live demo of what components the old Web UI version supported, please visit http://html-components.appspot.com! (Sorry for the quota limit!)

The list of the remaining components:

* Data Components
	* Carousel
	* Datagrid
	* Datatable
	* Orderlist
	* Picklist
	* Select Listbox
	* Tree
	* Treetable

* Input Components
	* Autocomplete

* Multimedia Components
	* Feed Reader

## Missing features from the Web UI version:

* The tabview and accordion components cannot be bound to a list of objects

## Components that work only in Dartium because of a dart2js problem:

* Confirmation Dialog
* Dialog
* Boolean Button
* Masked Input
* Rating
* Select Checkbox Menu
* Gallery
* Image Compare
* Lightbox
* Photocam
* Accordion
* Panel
* Tabview
* Draggable
* Growl
* Resizable