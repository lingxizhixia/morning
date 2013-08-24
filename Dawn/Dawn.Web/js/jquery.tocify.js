/* jquery Tocify - v1.5.0 - 2012-04-07
* http://www.gregfranko.com/jquery.tocify.js/
* Copyright (c) 2012 Greg Franko; Licensed MIT */

// Immediately-Invoked Function Expression (IIFE) [Ben Alman Blog Post](http://benalman.com/news/2010/11/immediately-invoked-function-expression/) that calls another IIFE that contains all of the plugin logic.  I used this pattern so that anyone viewing this code would not have to scroll to the bottom of the page to view the local parameters that were passed to the main IIFE.

(function(tocify) {

    // ECMAScript 5 Strict Mode: [John Resig Blog Post](http://ejohn.org/blog/ecmascript-5-strict-mode-json-and-more/)
    "use strict";

    // Calls the second IIFE and locally passes in the global jQuery, window,
    // and document objects
    tocify(window.jQuery, window, document);
}

// Locally passes in `jQuery`, the `window` object, the `document` object, and
// an `undefined` variable.  The `jQuery`, `window` and `document` objects are
// passed in locally, to improve performance, since javascript first searches for
// a variable match within the local variables set before searching the global
// variables set.  All of the global variables are also passed in locally to be
// minifier friendly. `undefined` can be passed in locally, because it is not a
// reserved word in JavaScript.
(function($, window, document, undefined) {

    // ECMAScript 5 Strict Mode: [John Resig Blog Post](http://ejohn.org/blog/ecmascript-5-strict-mode-json-and-more/)
    "use strict";

    // Calling the jQueryUI Widget Factory Method
    $.widget("toc.tocify", {

        //Plugin version
        version: "1.5.0",

        // These options will be used as defaults
        options: {
            // **context**: Accepts String: Any jQuery selector

            // The container element that holds all of the elements used to
            // generate the table of contents
            context: "body",

            // **ignoreSelector**: Accepts String: Any jQuery selector
            // A selector to any element that would be matched by selectors
            // that you wish to be ignored

            ignoreSelector: null,

            // **selectors**: Accepts an Array of Strings: Any jQuery selectors

            // The element's used to generate the table of contents.  The order
            // is very important since it will determine the table of content's
            // nesting structure
            selectors: "h1, h2, h3",

            // **hashGenerator**: How the hash value (the anchor segment of the URL, following the
            // # character) will be generated.
            //
            // "compact" (default) - #CompressesEverythingTogether
            // "pretty" - #looks-like-a-nice-url-and-is-easily-readable
            // function(text, element){} - Your own hash generation function that accepts the text as an
            // argument, and returns the hash value.
            hashGenerator: "pretty",
        },

        // _Create - Constructs the plugin.  Only called once.
        _create: function() {

            var self = this;

            // Internal array that keeps track of all TOC items (Helps to
            // recognize if there are duplicate TOC item strings)

            self.items = [];

            // Generates the HTML for the dynamic table of contents
            self._generateToc();

            self.webkit = (function() {
                for(var prop in window) {
                    if(prop) {
                        if(prop.toLowerCase().indexOf("webkit") !== -1) {
                            return true;
                        }
                    }
                }

                return false;
            }());
        },

        // _generateToc - Generates the HTML for the dynamic table of contents
        _generateToc: function() {

            // _Local variables_

            // Stores the plugin context in the self variable
            var self = this,
                // All of the HTML tags found within the context provided (i.e.
                // body) that match the top level jQuery selector above
                firstElem,

                // Instantiated variable that will store the top level newly
                // created unordered list DOM element
                li,
                ignoreSelector = self.options.ignoreSelector;

             // If the selectors option has a comma within the string
             if(this.options.selectors.indexOf(",") !== -1) {
                 // Grabs the first selector from the string
                 firstElem = $(this.options.context).find(this.options.selectors.replace(/ /g,"").substr(0, this.options.selectors.indexOf(",")));

             } else {
                 // If the selectors option does not have a comman within the string
                 // Grabs the first selector from the string and makes sure there are no spaces
                 firstElem = $(this.options.context).find(this.options.selectors.replace(/ /g,""));
             }

            // Loops through each top level selector
            firstElem.each(function(index) {
                //If the element matches the ignoreSelector then we skip it
                if($(this).is(ignoreSelector)) {
                    return;
                }

                // Creates a list HTML element and adds a dynamic ID
                // and standard class name
                li = self._nestElements($(this), index);

                // Add the created unordered list element to the HTML element calling the plugin
                self.element.append(li);

                // Finds all of the HTML tags between the header and subheader elements
                $(this).nextUntil(this.nodeName.toLowerCase()).each(function() {

                    // If there are no nested subheader elemements
                    if($(this).find(self.options.selectors).length === 0) {

                        // Loops through all of the subheader elements
                        $(this).filter(self.options.selectors).each(function() {

                            // If the element matches the ignoreSelector then we skip it
                            if($(this).is(ignoreSelector)) {
                                return;
                            }

                            self._appendSubheaders.call(this, self, li);
                        });
                    } else {
                        // If there are nested subheader elements
                        // Loops through all of the subheader elements
                        $(this).find(self.options.selectors).each(function() {
                            // If the element matches the ignoreSelector then we skip it
                            if($(this).is(ignoreSelector)) {
                                return;
                            }
                            self._appendSubheaders.call(this, self, li);
                        });
                    }
                });
            });
        },

        // _nestElements - Helps create the table of contents list by appending
        // nested list items
        _nestElements: function(self, index) {
            var arr, item, hashValue;

            arr = $.grep(this.items, function (item) {
                return item === self.text();
            });

            // If there is already a duplicate TOC item
            if(arr.length) {
                // Adds the current TOC item text and index (for slight
                // randomization) to the internal array
                this.items.push(self.text() + index);
            // If there not a duplicate TOC item
            } else {
                // Adds the current TOC item text to the internal array
                this.items.push(self.text());
            }

            hashValue = this._generateHashValue(arr, self, index);

            // Appends a list item HTML element to the last unordered list HTML
            // element found within the HTML element calling the plugin
            item = $("<li/>").
              append($("<a/>", { "text": self.text(), "href": "#" + hashValue }));

            // Adds the id to the traveresed DOM element
            self.before($("<a/>", { id: hashValue }));

            return item;
        },

        // _generateHashValue
        // ------------------
        //      Generates the hash value that will be used to refer to each item.
        _generateHashValue: function(arr, self, index) {

            var hashValue = "",
                hashGeneratorOption = this.options.hashGenerator;

            if (hashGeneratorOption === "pretty") {

                // prettify the text
                hashValue = self.text().toLowerCase().replace(/\s/g, "-");

                // fix double hyphens
                while (hashValue.indexOf("--") > -1) {
                    hashValue = hashValue.replace(/--/g, "-");
                }

                // fix colon-space instances
                while (hashValue.indexOf(":-") > -1) {
                    hashValue = hashValue.replace(/:-/g, "-");
                }

            } else if (typeof hashGeneratorOption === "function") {

                // call the function
                hashValue = hashGeneratorOption(self.text(), self);

            } else {

                // compact - the default
                hashValue = self.text().replace(/\s/g, "");

            }

            // add the index if we need to
            if (arr.length) { hashValue += ""+index; }

            // return the value
            return hashValue;

        },

        // _appendElements
        // ---------------
        //      Helps create the table of contents list by appending subheader elements

        _appendSubheaders: function(self, ul) {
            // The current element index
            var index = $(this).index(self.options.selectors),
                // Finds the previous header DOM element
                previousHeader = $(self.options.selectors).eq(index - 1),
                currentTagName = +$(this).prop("tagName").charAt(1),
                previousTagName = +previousHeader.prop("tagName").charAt(1),
                lastSubheader;

            // If the current header DOM element is smaller than the previous
            // header DOM element or the first subheader
            if(currentTagName < previousTagName) {
                // Selects the last unordered list HTML found within the HTML
                // element calling the plugin
                self.element.find("li").last()
                  .append(self._nestElements($(this), index));
            }

            // If the current header DOM element is the same type of header
            // (eg. h4) as the previous header DOM element
            else if(currentTagName === previousTagName) {
                ul.find("li").last().after(self._nestElements($(this), index));
            } else {
                ul.append($("<ul/>", { class: "nav" }).
                  append(self._nestElements($(this), index)));
            }
        },

        // setOption
        // ---------
        //      Sets a single Tocify option after the plugin is invoked
        setOption: function() {

            // Calls the jQueryUI Widget Factory setOption method
            $.Widget.prototype._setOption.apply(this, arguments);

        },

        // setOptions
        // ----------
        //      Sets a single or multiple Tocify options after the plugin is invoked
        setOptions: function() {
            // Calls the jQueryUI Widget Factory setOptions method
            $.Widget.prototype._setOptions.apply(this, arguments);
        },
    });
})); //end of plugin
