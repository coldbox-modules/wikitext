/**
* This is the Base Integration Test CFC
* Place any helpers or traits for all integration tests here.
*/
component extends="coldbox.system.testing.BaseTestCase" appMapping="/root" {
	
/*********************************** LIFE CYCLE Methods ***********************************/

	// executes before all suites+specs in the run() method
	function beforeAll(){
		super.beforeAll();
	}

	// executes after all suites+specs in the run() method
	function afterAll(){
		super.afterAll();
	}
	
	function run( testResults, testBox ){
		// all your suites go here.
		describe( "Wiki Text Module", function(){
			beforeEach(function( currentSpec ){
				setup();
			});

			it( "can be created", function(){
				expect(	getInstance( "wikitext@wikitext") ).toBeComponent();
			});

			it( "can render wiki markup to HTML", function(){
				var e = execute( event="main.index", renderResults=true );
				expect( e.getRenderedContent() ).toInclude( '<table id="toc" class="toc" summary="Contents">' );
			} );

			
		});
	}

}