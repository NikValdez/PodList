document.addEventListener('turbolinks:load', function () {
  var episodes = new Bloodhound({
    datumTokenizer: function(datum) {
      return Bloodhound.tokenizers.whitespace(datum.value);
    },
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
      wildcard: '%QUERY',
      url: 'https://itunes.apple.com/search?term=%QUERY&entity=podcast',
      transform: function(response) {
        // Map the remote source JSON array to a JavaScript object array
        return $.map(response.results, function(episode) {
          return {
            value: episode.trackName
          };
        });
      }
    }
  });

  // Instantiate the Typeahead UI
  $('.typeahead').typeahead(null, {
    display: 'value',
    source: episodes
  });
})
