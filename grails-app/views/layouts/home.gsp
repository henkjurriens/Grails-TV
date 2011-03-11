<!doctype html>
<html>
    <head>
        <title><g:layoutTitle default="Grails TV" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'presentation.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />

        <g:javascript library="jquery" />

    </head>
    <body>
         <div id="searchbar">
         </div>



          <div id="search">
              <g:formRemote name="myForm" on404="alert('not found!')" update="results"  url="${[controller : 'search', action:'show']}">
                <input type="search" size="80" name="q"/>
                <input id="searchbutton" type="submit" value="Go"/>
              </g:formRemote>
          </div>
          <div id="results" >

          </div>


        <div id="content">
          <div id="logo">
            <img src="/images/GTV-logo-100.png"><h1> Home</h1>
          </div>

          <g:layoutBody />
        </div>
    </body>
    <script>
       $('#search').hide();
       $('#results').hide();


       $("#searchbar").hover(
         function(){
             $('#search').show();
         }
       );


       $("#content").hover(
           function(){
              $('#search').hide();
              $('#results').hide();
           }
       );

       $("#searchbutton").click(
           function(){
              $('#results').show();
           }
       );


    </script>
</html>