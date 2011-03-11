<html>
    <head>
    	<meta name="layout" content="fullscreen" />
    </head>
    <body>

        <g:if test="${params.media == 'movies'}">
         <video src="${movie}" autoplay="autoplay" controls="controls" height="300" >
        </g:if>
        <g:else>

        <iframe title="YouTube video player" width="480" height="390" src="${movie}" frameborder="0" allowfullscreen></iframe>
        </g:else>

    </body>
</html>