/**
* My Event Handler Hint
*/
component{

	property name="wikitext" inject="wikitext@wikitext";

	// Index
	any function index( event,rc, prc ){
		return wikitext.toHTML( renderView( "main/wiki" ) ).html;
	}

	// Run on first init
	any function onAppInit( event, rc, prc ){
	}

}