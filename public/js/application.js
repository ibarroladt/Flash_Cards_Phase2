$(document).ready(function() {
  $('form#card_guess').submit(function(event){
    event.preventDefault();
    var url = $(this).attr('action');
    var value = $(this).serialize();
      console.log(url);
      console.log(value);
    $.post(url,value,function(response){          
        $('#ajax').html(response);
    });
  });

});

// replace what ever inside #ajax with data you receive 
// line 6, when it gets back it will give us data, status, and xhr request

$(document).ready(function() {
  $('form#answer').submit(function(event){
    event.preventDefault();
    var url = $(this).attr('action'); 
      console.log(url);   
    $.get(url,function(response){
        $('#ajax').html(response);
    });
  });
});

// line 21, this refers to the form /.attr('action') mean it asks for the value that is in the attribute action. 
// we can also use attribure that is not action that is inside this method. 
