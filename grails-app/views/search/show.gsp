

<table style="margin : auto">
<g:each in="${movies}" var="movie">
     <tr><td><g:link controller="media" action="detail" id="${movie.id}" params="[media : 'movies']">${movie.title}</g:link></td></tr>
</g:each>


<g:each in="${videos}" var="video">
     <tr><td><g:link controller="media" action="detail" id="${video.id}" params="[media : 'video']">${video.title}</g:link></td></tr>
</g:each>


<g:each in="${photos}" var="photo">
     <tr><td><g:link controller="media" action="detail" id="${photo.id}" params="[media : 'photos']">${photo.title}</g:link></td></tr>
</g:each>
</table>




