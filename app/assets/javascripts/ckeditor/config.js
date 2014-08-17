/*
 Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
 */


CKEDITOR.editorConfig = function( config )
{
    // Define changes to default configuration here. For example:
    config.language = 'uk';
    // config.uiColor = '#AADC6E';

    //config.allowedContent = true;



    config.allowedContent =

    {
        '$1':{
          match: function(element){
            return true;
          },
          attributes: '*',
          classes: '*'
          //styles: 'margin*;color;font*;'
          //styles: '(margin);(margin-*);(color);'
        }
    };

    //config.allowedContent = ''


    //config.allowedContent = '*[*]{*}(*)';

    //config.disallowedContent = '*[style]'

//    config.disallowedContent =
//    {
//        '$1':{
//            elements: '*',
//            attributes: 'style'
//        }
//    }

    config.ignoreEmptyParagraph = false;

    //config.removePlugins = 'PasteFromWord';
    //config.forcePasteAsPlainText = true;
    //config.pasteFromWordRemoveStyles = true;
    //config.pasteFromWordRemoveFontStyles = false;
    //config.pasteFromWordRemoveStyles = false;

    config.plugins =
        ["dialogui", "dialog", "about", "a11yhelp", "dialogadvtab", "basicstyles", "bidi", "blockquote", "clipboard", "button", "panelbutton", "panel", "floatpanel",
            "colorbutton", "colordialog", "templates", "menu", "contextmenu", "div", "resize", "toolbar", "elementspath", "enterkey", "entities", "popup",
            "filebrowser", "find", "fakeobjects", "flash", "floatingspace", "listblock", "richcombo", "font", "forms", "format", "horizontalrule", "htmlwriter",
            "iframe", "wysiwygarea", "image", "indent", "indentblock", "indentlist", "smiley", "justify", "menubutton", "language", "link", "list", "liststyle", "magicline", "maximize",
            "newpage", "pagebreak", "pastetext", "pastefromword", "preview", "print", "removeformat", "save", "selectall", "showblocks", "showborders", "sourcearea", "specialchar", "scayt",
            "stylescombo", "tab", "table", "tabletools", "undo", "wsc"].join(',');


    /* Filebrowser routes */
    // The location of an external file browser, that should be launched when "Browse Server" button is pressed.
    config.filebrowserBrowseUrl = "/ckeditor/attachment_files";

    // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Flash dialog.
    config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";

    // The location of a script that handles file uploads in the Flash dialog.
    config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";

    // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Link tab of Image dialog.
    config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";

    // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Image dialog.
    config.filebrowserImageBrowseUrl = "/ckeditor/pictures";

    // The location of a script that handles file uploads in the Image dialog.
    config.filebrowserImageUploadUrl = "/ckeditor/pictures";

    // The location of a script that handles file uploads.
    config.filebrowserUploadUrl = "/ckeditor/attachment_files";

    // Rails CSRF token
    config.filebrowserParams = function(){
        var csrf_token, csrf_param, meta,
            metas = document.getElementsByTagName('meta'),
            params = new Object();

        for ( var i = 0 ; i < metas.length ; i++ ){
            meta = metas[i];

            switch(meta.name) {
                case "csrf-token":
                    csrf_token = meta.content;
                    break;
                case "csrf-param":
                    csrf_param = meta.content;
                    break;
                default:
                    continue;
            }
        }

        if (csrf_param !== undefined && csrf_token !== undefined) {
            params[csrf_param] = csrf_token;
        }

        return params;
    };

    config.addQueryString = function( url, params ){
        var queryString = [];

        if ( !params ) {
            return url;
        } else {
            for ( var i in params )
                queryString.push( i + "=" + encodeURIComponent( params[ i ] ) );
        }

        return url + ( ( url.indexOf( "?" ) != -1 ) ? "&" : "?" ) + queryString.join( "&" );
    };

    // Integrate Rails CSRF token into file upload dialogs (link, image, attachment and flash)
    CKEDITOR.on( 'dialogDefinition', function( ev ){
        // Take the dialog name and its definition from the event data.
        var dialogName = ev.data.name;
        var dialogDefinition = ev.data.definition;
        var content, upload;

        if (CKEDITOR.tools.indexOf(['link', 'image', 'attachment', 'flash'], dialogName) > -1) {
            content = (dialogDefinition.getContents('Upload') || dialogDefinition.getContents('upload'));
            upload = (content == null ? null : content.get('upload'));

            if (upload && upload.filebrowser && upload.filebrowser['params'] === undefined) {
                upload.filebrowser['params'] = config.filebrowserParams();
                upload.action = config.addQueryString(upload.action, upload.filebrowser['params']);
            }
        }
    });
};


//for (var i in CKEDITOR.instances) {
//    CKEDITOR.instances[i].on('change', function() {
//        //alert('test 1 2 3')
//        var content = this.getData()
//        var length = content.length
//
//        optimized_content = 'hello'
//        //optimized_content = content.replace(/<p>&nbsp;<\/p>/gm,"")
//        this.setData(optimized_content)
//        console.log(content)
//    });
//}