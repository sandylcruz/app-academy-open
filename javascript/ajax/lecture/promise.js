function getForecastForLocation() {
  locationRequest()
    .then(spotRequest)
    .then(forecastRequest)
    .then(handleSuccess)
    .catch(handleError);
}

const p = new Promise((resolve, reject) => {
  if () {
    resolve
  } else {
    reject
  }
})

// Passing a callback

const fetchSuccess = cat => console.log(cat);
const fetchError = err => console.log(err);

const fetchCat = (catId, success, error) => {
  $.ajax({
    url: `/cats/${catId}`,
    success, 
    error
  })
}

fetchCat(1, fetchSuccess, fetchError)

// Using a promise

const fetchSuccess = cat => console.log(cat);
const fetchError = err => console.log(err);

const fetchCat = catId => $.ajax({url: `/cats/${catId}`});
fetchCat(1).then(fetchSuccess).fail(fetchError)