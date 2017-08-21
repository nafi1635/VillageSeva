function emailvalidate(mail)   
{  
	
	var reg=/^\w+([\._]?\w)*@\w+([\._]?\w)*(\.\w{3})+$/;
//	var reg=/[a-z]+$/;

 if(mail.value.match(reg))
  { 
	
    return (true);  
  }  
 else
	 {
    alert("You have entered invalid email!")  ;
    mail.value="";
    return (false); 
	 }
}  
function namevalidate(mail)   
{  
	
	var reg=/^[0-9]+$/;

 if(mail.value.match(reg))
  { 
	
    return (true);  
  }  
 else
	 {
    alert("Name limit!")  ;
    mail.value="";
    return (false); 
	 }
}  



function validatepayment()
{
	var cvv=document.getElementById("cvv").value;
var exMonth=document.getElementById("exmonth").value;
var exYear=document.getElementById("exyear").value;
var cardNumber=document.getElementById("cardno").value;
var date = new Date ();
var month = date.getMonth();
var year = date.getFullYear();

       
        if (exMonth.selectedIndex === 0){
            alert("Please select the month");
            return false;
        }
        if (exYear.selectedIndex === 0){
            alert("Please select the year");
            return false;
        }
        if (year> exYear || (year === exYear && month >= exMonth)){
            alert("The expiry date is before today's date. Please select a valid expiry date");
            return false;
        }
        if (cardNumber.value.length!=16  || isNaN(cardNumber.value)){
                        alert("Please enter 16 numbers for your credit card");
                        cardNumber.focus();
                        return false;
            }
            alert("Thank you for your submission");
            return true;
}  

function validatecard()
{	
	var cardNumber=document.getElementById("cardno").value;
	if (cardNumber.value.length!=16  || isNaN(cardNumber.value))
	{
		cardNumber.value="";
        alert("Please enter 16 numbers for your credit card");
        
        return false;
	}
}
var today, someday;
var exMonth=document.getElementById("exMonth");
var exYear=document.getElementById("exYear");
today = new Date();
someday = new Date();
someday.setFullYear(exYear, exMonth, 1);
function validate()
{
if (someday < today) {
   alert("The expiry date is before today's date. Please select a valid expiry date");
   return false;
}
}

function allnumeric(inputtxt)  
{  
	
		
		
   var numbers = /^[0-9]+$/;  
   if(inputtxt.value.match(numbers))  
   {  
	   if (inputtxt.value.length!=16  || isNaN(inputtxt.value))
		{
	        alert("Please enter 16 numbers for your credit card");
	       inputtxt.value="";
	        
	        return false;
		}
    
   return true;  
   }  
   else  
   {  
   alert('Please input numeric characters only');  
   inputtxt.value=""; 
   return false;  
   }  	
} 
function numeric(inputtxt)  
{  
	
		
		
   var numbers = /^[0-9]+$/;  
   if(inputtxt.value.match(numbers))  
   {   
   return true;  
   }  
   else  
   {  
   alert('Please input numeric characters only');  
   inputtxt.value=""; 
   return false;  
   }  	
} 

function allcvv(inputtxt)  
{  
   var numbers = /^[0-9]+$/;  
   if(inputtxt.value.match(numbers))  
   {  
	   if (inputtxt.value.length!=3  || isNaN(inputtxt.value))
		{
	        alert("Please valid CVV");
	        inputtxt.value="";
	        return false;
		}
    
   return true;  
   }  
   else  
   {  
   alert('Please input numeric only');  
   inputtxt.value="";
   return false;  
   }  
} 
function validaterecharge(inputtxt)  
{  
   var numbers = /^[0-9]+$/;  
   if(inputtxt.value.match(numbers))  
   {  
	   if (isNaN(inputtxt.value))
		{
	        alert("Recharge cannot be null");
	        inputtxt.value="";
	        return false;
		}
    
   return true;  
   }  
   else  
   {  
   alert('Please input numeric only');  
   inputtxt.value="";  return false;  
   }  
   
} 
function mobilevalidate(inputtxt)  
{  
   var numbers = /^[0-9]+$/;  
   if(inputtxt.value.match(numbers))  
   {  
	   if (inputtxt.value.length!=10  || isNaN(inputtxt.value))
		{
	        alert("Please Enter valid mobile");
	        inputtxt.value="";
	        return false;
		}
    
   return true;  
   }  
   else  
   {  
   alert('Please input numeric only');  
   inputtxt.value="";
   return false;  
   }  
} 