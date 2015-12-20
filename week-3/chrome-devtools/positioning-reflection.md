Amoung other things, Chrome Dev Tools provides a visual sandbox of sorts for people to tinker with the look of their website. You can alter the site's CSS in real time by opening Dev Tools on your site, selecting "Styles", and inspecting the CSS elements. Changing the "width" and "height" (and border)attributes resizes an object inside it's own padding, border and margin. Width is the number of pixels an object occupies on the x-coordinate of the page, height is the corresponding value for the y-coordinate.

Static - Default CSS positioning. Not affected by top, bottom, left, and right properties. Positioned according to the normal cascading flow of the page.
Relative - Positioned relative to its normal(static) position, based on other positioning elements. (E.g.
position: relative;
top: 10px;
would shift the element's position 10 pixels down from where it would normally be.)
Fixed - Stays in the same place on the viewport even if the page is scrolled. Needs top, right, bottom, and left to position the element. Used in ads, and current Wikipedia funding drive.
Absolute - Positioned relative to nearest positioned ancestor in the HTML. If no positioned ancestors, uses document body and moves down with page scrolling

Margin - Transparent area immediately surrounding the border.
Border - Area between margin and padding, can be different colors and formats (solid, dashed, etc)
Padding - Transparent area immediately around the content.

I thought this challenge wasn't too difficult, but positioning and the box model are a pain for me to remember, so I will have to return to this.