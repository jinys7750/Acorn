var cat1 = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  prefetch: 'https://raw.githubusercontent.com/mimity-example/json/master/cat1.json?token='+Math.random()
});

var cat2 = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  prefetch: 'https://raw.githubusercontent.com/mimity-example/json/master/cat2.json?token='+Math.random()
});

$('#input-search').typeahead({
  highlight: true
},
{
  name: 'category-1',
  display: 'name',
  source: cat1,
  templates: {
    header: '<h6 class="dropdown-header">Category 1</h6>'
  }
},
{
  name: 'category-2',
  display: 'name',
  source: cat2,
  templates: {
    header: '<h6 class="dropdown-header">Category 2</h6>'
  }
});

if ($('#inputCountry').length) {
  var countries = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: {
      url: 'https://raw.githubusercontent.com/mimity-example/json/master/countries.json?token='+Math.random()
    }
  });

  countries.initialize();

  $('#inputCountry').typeahead({
      highlight: true
  }, {
      displayKey: 'name',
      source: countries.ttAdapter()
  });
}