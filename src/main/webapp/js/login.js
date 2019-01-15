$(document).ready(function() {

        $('#login').click(function() {

            var email=$("#email").val();
            var pass=$("#pwd").val();
            var request = {"email":email,"pass":pass}
                $.ajax({
                    type: "POST",
                    url: "login",
                    data: JSON.stringify(request),
                    //data:request,
                    contentType: 'application/json',
                    success: function(data){
                       var result = JSON.parse(data);
                       $('#messageDiv').show();
                       $('#messageDiv').removeClass();
                       if(result.type=="Success"){
                    	  
                    	   $('#messageDiv').addClass("alert alert-success")
                       }
                       else{
                    	  
                    	   $('#messageDiv').addClass("alert alert-danger")
                    	  
                       }
                       $('#messageDiv').html(result.message);
                    },
                   //error: function(){};

                });
            
            return false;

        });

    });