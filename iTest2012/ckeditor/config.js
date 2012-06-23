/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';
    CKEDITOR.config.toolbar = [
   ['Undo', 'Redo', 'Format', 'Font', 'FontSize', 'TextColor', 'BGColor'], ['Cut', 'Copy', 'Paste', 'SelectAll', 'RemoveFormat'],
   '/',
   ['Bold', 'Italic', 'Underline', 'StrikeThrough'], ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'], ['Outdent', 'Indent'],
   ['NumberedList', 'BulletedList', 'SpecialChar'], ['Table', '-', 'Link', 'Smiley'], ['Blockquote']
    ];
    //CKEDITOR.config.uiColor = '#d3dd15';
    config.width = 550;
    config.height = 100;
    config.resize_maxHeight = 300;
    config.resize_maxWidth = 550;    
};
