# INSTRUCTIONS

Just drop into your modules folder or use CommandBox to install

`box install wikitext`

The module registers the wiki converter model: `wikitext@wikitext`.  You can then use the following functions to convert markup and HTML and vice-versa:


```js
/**
* Convert an HTML string to wiki syntax
* @wikiTranslator The wiki syntax to use. It must be using a valid translator. See getTranslators()
* @htmlString The html string to convert
*/
function toWiki( required wikiTranslator, required htmlString )

/**
* Convert wiki text and return a structure with two keys: [wikiModel=The java wiki model object,html=the converted html string]
* @wikitext The wiki text to convert to HTML
*/
function toHTML( required wikitext )

```