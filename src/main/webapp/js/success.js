$(document).ready(function() {

        $('#registerBtn').click(function() {

            var fName=$("#fName").val();
            var lName=$("#lName").val(); 
            var gender=$("#gender").val();
            var dateOfBirth=$("#dateOfBirth").val();
            
            var streetAddr=$("#streetAddr").val();
        	var city=$("#city").val();
        	var state=$("#state").val();
        	var zipCode=$("#zipCode").val();
        	
        	var homePhone=$("#homePhone").val();
        	var ofcPhone=$("#ofcPhone").val();
        	var cellPhone=$("#cellPhone").val();
        	var email=$("#email").val();
        	

		     var request = {
		 			"fName":fName,
					"lName":lName,
					"gender":gender,
					"dateOfBirth":dateOfBirth,
					"streetAddr":streetAddr,
					"city":city,
					"state":state,
					"zipCode":zipCode,
					"homePhone":homePhone,
					"ofcPhone":ofcPhone,
					"cellPhone":cellPhone,
					"email":email
		     }
                $.ajax({
                    type: "POST",
                    url: "success.htm",
                    datatype: 'json',
                    data: JSON.stringify(request),
                    contentType: 'application/json',
                    mimeType: 'application/json',
                    
                    success: function(data) {
                    	$('#registerMsgDiv').show();
                    	$('#registerMsgDiv').html(data.message);
                    	if(data.type=='success'){
                    		$('#registerMsgDiv').addClass('alert-success');
                    		$('#registerMsgDiv').removeClass('alert-danger');	
                    	}
                    	else{
                    		$('#registerMsgDiv').removeClass('alert-success');
                    		$('#registerMsgDiv').addClass('alert-danger');
                    	}
                    },
            	    error: function(data,status,er) {
            	        alert("error: "+data+" status: "+status+" er:"+er);
            	        }

                });
        });

    });