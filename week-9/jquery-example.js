
// U3.W9:JQuery


// I worked on this challenge with: Heather Conklin.
// This challenge took me 3 hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
// bodyElement = $('body')

headerElement = $('h1:first' )
headerElement.css({'color': 'yellow', 'border': 'black dotted','text-align': 'center', 'padding': '2em'})
// headerElement.css({'visibility':'hidden'})
headerElement.html("Fiddler Crabs 2016")

// $('div h1').css({'color': 'black', 'border': 'none'})

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://gcrl.usm.edu/public/gulf.creatures/fiddler.crabs/images/fiddler.fingers.2.800.jpg')
})

$('img').on('mouseleave', function(image){
  image.preventDefault()
  $(this).attr('src', 'imgs/dbc_logo.png')
})

// $('img').on('hover', function(e){
//   e.preventDefault()
//   $(this).attr('src', ('imgs/dbc_logo.png', 'http://gcrl.usm.edu/public/gulf.creatures/fiddler.crabs/images/fiddler.fingers.2.800.jpg') )
// })

//RELEASE 5: Experiment on your own


$('div img').css({'border': '4px solid'});

$('div img').click(function()  {
  $(this).animate({
      'width': '20em',
      'border-width': '40px'
  }, 2200);
});


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

///////// What is jQuery?
// A library of pre-written JavaScript functions that are executed by the user's web browser, instead of on the web server. The most popular JS library in use, it's free and open-source and works on many browsers.

///////// What does jQuery do for you?
// It can perform actions on specific elements of a website. It can change the HTML or code (according to rules you set), and make the site more interactive to users. It's many features save web developers time and make the code less complicated. (Compare it to the work of a carpenter who makes her own nails versus a carpenter who buys nails.)

///////// What did you learn about the DOM while working on this challenge?
// I learned that one takes action on elements surrounding the element in which one wants to work, because I strugged for some time animating the image within the div. After much experimentation, I affirm that one has to declare divs around elements to create a better node for the DOM. I didn't learn as much on my own about DOM, I had to do my own readings so I was comfortable answering this question.