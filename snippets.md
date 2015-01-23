var searcher = new google.search.customSearchControl.getImageSearcher();
searcher.setRestriction(
  google.search.customSearchControl.getImageSearcher.RESTRICT_COLORFILTER,
  google.search.customSearchControl.getImageSearcher.COLOR_RED
  );

  https://developers.google.com/custom-search/docs/structured_search#colorfilter


in html:

<script>
(function() {
  var cx = '012986436070255057372:htg6wyihnie';
  var gcse = document.createElement('script');
  gcse.type = 'text/javascript';
  gcse.async = true;
  gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
  '//www.google.com/cse/cse.js?cx=' + cx;
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(gcse, s);
  })();
</script>
  <gcse:search></gcse:search>


  https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=017576662512468239146:omuauf_lfve&q=lectures

  https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=017576662512468239146:omuauf_lfve&q=flower&imgSize=small


  imgDominantColor	string	Returns images of a specific dominant color.

  Acceptable values are:
  "black": black
  "blue": blue
  "brown": brown
  "gray": gray
  "green": green
  "pink": pink
  "purple": purple
  "teal": teal
  "white": white
  "yellow": yellow


  https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=012986436070255057372:htg6wyihnie&q=happiness&imgDominantColor=pink
