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

For more examples and code samples, please visit this page: ....

Here you can find most of the use cases of the components.

The pages are not designed properly yet, but they are good to give an insight what this library is all about.

## Migrated Components

The list of components that are already migrate from the old Web UI framework to Polymer.dart:

* Panel Components
  * Tab
  * Tabview

* Utility Components
  * Clock
  * Growl
  * Growl Message
  * Item Template
  * Notification Bar

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
  * Tagcloud
  * Tree
  * Treetable

* Dialog Components
  * Confirmation Dialog
  * Dialog

* Input Components
  * Autocomplete
  * Boolean Button
  * Masked Input
  * Rating
  * Select Button
  * Select Checkbox Menu

* Menu Components
  * Breadcrumb
  * Context Menu
  * Menu Button
  * Menubar
  * Split Button

* Multimedia Components
  * Feed Reader
  * Gallery
  * Image Compare
  * Lightbox
  * Photocam

* Panel Components
  * Accordion
  * Panel

* Utility Components
  * Draggable
  * Resizable