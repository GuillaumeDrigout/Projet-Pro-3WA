$(function(){
    //Au changement de l'album dans la liste déroulante
    $('#record').on('change',function(){
        //On récupère le value de l'album
        var id = $(this).val();
        
        //On affiche le Raw_template de l'album selectionné, où se trouvera le nombre d'input corrrespondant au nombre de chansons de l'album
        $.get(
            getRequestUrl() + '/admin/nombre?id='+ id,
                function(data)
                {
                    //callback, on remplace le nombre d'inputs par le nombre de morceaux
                    $('#nbreinput').empty();
                    $('#nbreinput').html(data);
                }
            )
          
    })
    
    //On affiche le message qui convient à l'envoi du formulaire
    $('#success').delay(5000).fadeOut('slow');
    $('#danger').delay(5000).fadeOut('slow');

})

