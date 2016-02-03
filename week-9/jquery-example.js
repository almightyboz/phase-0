
// U3.W9:JQuery


// I worked on this challenge with: Heather Conklin.
// This challenge took me [#] hours.

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
headerElement.css({'color': 'yellow', 'border': 'black dotted' })
// headerElement.css({'visibility':'hidden'})
headerElement.html("Fiddler Crabs 2016")

// $('div h1').css({'color': 'black', 'border': 'none'})

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://gcrl.usm.edu/public/gulf.creatures/fiddler.crabs/images/fiddler.fingers.2.800.jpg')
})

$('img').on('mouseleave', function(e){
  e.preventDefault()
  $(this).attr('src', 'imgs/dbc_logo.png')
})

// $('img').on('hover', function(e){
//   e.preventDefault()
//   $(this).attr('src', ('imgs/dbc_logo.png', 'http://gcrl.usm.edu/public/gulf.creatures/fiddler.crabs/images/fiddler.fingers.2.800.jpg') )
// })

//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.