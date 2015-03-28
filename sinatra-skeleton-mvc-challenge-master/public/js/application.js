$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('.tweet').click(function(event){
      event.preventDefault();

    var link = $('form').attr('action');

    var request = $.ajax({
      url: link,
      type: 'POST'
    })

    request.done(function(data){
      $('body').append('<p>' + data.tweet_content + '</p>');
      $('.content').val();
    });


    // var url = $('form').attr('action');
    // var data = $("input[name='content']").val();
    // $.post(url, function(data){
    //   $('body').html
    // })

      // .done(function(response) {
      //   // add the tweet to the page
      //   $('body').append('<p>'+ data + '</p>');
      // });
  }); //close click
}); //close document
