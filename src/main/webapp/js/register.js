$(document).ready(function(){
	
    $("#registerBtn").click(function(){
       
    var userId = $('#userId').val();
    var password = $('#password').val();
    var firstName = $('#firstName').val();
    var lastName = $('#lastName').val();
    
    var request = {"userId":userId,"password":password,"firstName":firstName,"lastName":lastName}
    
    	 $.ajax({
    	        url: "registerUser.htm",
    	        type: 'POST',
    	        dataType: 'json',
    	        data: JSON.stringify(request),
    	        contentType: 'application/json',
    	        mimeType: 'application/json',
    	 
    	        success: function (data) {
    	            
    	        //alert(data.message);
    	            
    	        $('#registerMsgDiv').html(data.message);
    	        },
    	        error:function(data,status,er) {
    	            alert("error: "+data+" status: "+status+" er:"+er);
    	        }
    	    });
    	
    	
    });
});