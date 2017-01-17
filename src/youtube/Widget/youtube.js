/*
    youtube
    ========================

    @file      : youtube.js
    @version   : v2.0
    @author    : Simon Martyr
    @date      : Wed, 16 Dec 2015 13:13:23 GMT
    @copyright : 
    @license   : Apache

    Documentation
    ========================
    Describe your widget here.
*/

// Required module list. Remove unnecessary modules, you can always get them back from the boilerplate.
define([
    "dojo/_base/declare",
    "mxui/widget/_WidgetBase",
    "dijit/_TemplatedMixin",
    "mxui/dom",
    "dojo/dom",
    "dojo/dom-prop",
    "dojo/dom-geometry",
    "dojo/dom-class",
    "dojo/dom-style",
    "dojo/dom-construct",
    "dojo/_base/array",
    "dojo/_base/lang",
    "dojo/text",
    "dojo/html",
    "dojo/dom-attr",
    "dojo/_base/event",
    "dojo/text!youtube/widget/template/youtube.html"
], function (declare, _WidgetBase, _TemplatedMixin, dom, dojoDom, dojoProp, dojoGeometry, dojoClass, dojoStyle, dojoConstruct, dojoArray, dojoLang, dojoText, dojoHtml, dojoAttr, dojoEvent, widgetTemplate) {
    "use strict";

    // Declare widget's prototype.
    return declare("youtube.widget.youtube", [_WidgetBase, _TemplatedMixin], {
        // _TemplatedMixin will create our dom node using this HTML template.
        templateString: widgetTemplate,
        youtubeplayer: null, 

        // Parameters configured in the Modeler.
        value: "", 

        // dijit._WidgetBase.postCreate is called after constructing the widget. Implement to do extra setup work.
        postCreate: function () {
            console.log(this.id + ".postCreate");

        },

        // mxui.widget._WidgetBase.update is called when context is changed or initialized. Implement to re-render and / or fetch data.
        update: function (obj, callback) {
            console.log(this.id + ".update");
            if(obj != null){
                this._makePlayer(obj.get(this.value));
            }

            callback();
        },
        
        _makePlayer: function(url){
            dojoAttr.set(this.youtubeplayer, "src", url);  
        },

        uninitialize: function () {
            logger.debug(this.id + ".uninitialize");
        }


    });
});

require(["youtube/widget/youtube"], function () {
    "use strict";
});