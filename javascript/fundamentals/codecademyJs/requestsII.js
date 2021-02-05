// fetch() GET requests II
fetch("https://api-to-call.com/endpoint")
  .then(
    (response) => {
      if (response.ok) {
        return response.json();
      }
      throw new Error("Request failed!");
    },
    (networkError) => {
      console.log(networkError.message);
    }
  )
  .then((jsonResponse) => {
    return jsonResponse;
  });

// Fetch() GET Requests III

const url = "https://api.datamuse.com/words";
const queryParams = "?sl=";

const inputField = document.querySelector("#input");
const submit = document.querySelector("#submit");
const responseField = document.querySelector("#responseField");

const getSuggestions = () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${queryParams}${wordQuery}`;
  fetch(endpoint, { cache: "no-cache" }).then(
    (response) => {
      if (response.ok) {
        return response.json();
      }
      throw new Error("Request failed!");
    },
    (networkError) => {
      console.log(networkError.message);
    }
  );
};

const displaySuggestions = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener("click", displaySuggestions);

// fetch GET Requests IV
const url = "https://api.datamuse.com/words";
const queryParams = "?sl=";

const inputField = document.querySelector("#input");
const submit = document.querySelector("#submit");
const responseField = document.querySelector("#responseField");

const getSuggestions = () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${queryParams}${wordQuery}`;

  fetch(endpoint, { cache: "no-cache" })
    .then(
      (response) => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Request failed!");
      },
      (networkError) => {
        console.log(networkError.message);
      }
    )
    .then((jsonResponse) => {
      renderResponse(jsonResponse);
    });
};

const displaySuggestions = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener("click", displaySuggestions);

// Fetch POST Requests II
fetch("https://api-to-call.com/endpoint", {
  method: "POST",
  body: JSON.stringify({ id: "200" }),
})
  .then(
    (response) => {
      if (response.ok) {
        return response.json();
      }
      throw new Error("Request failed!");
    },
    (networkError) => {
      console.log(networkError.message);
    }
  )
  .then((jsonResponse) => {
    console.log(jsonResponse);
  });

// Fetch() Post Requests IV

const apiKey = "<kheviol>";
const url = "https://api.rebrandly.com/v1/links";

const inputField = document.querySelector("#input");
const shortenButton = document.querySelector("#shorten");
const responseField = document.querySelector("#responseField");

const shortenUrl = () => {
  const urlToShorten = inputField.value;
  const data = JSON.stringify({ destination: urlToShorten });
  fetch(url, {
    method: "POST",
    headers: {
      "Content-type": "application/json",
      apikey: apiKey,
    },
    body: data,
  }).then(
    (response) => {
      if (response.ok) {
        return response.json();
      }
      throw new Error("Request failed!");
    },
    (networkError) => {
      console.log(networkError.message);
    }
  );
};

const displayShortUrl = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
};

shortenButton.addEventListener("click", displayShortUrl);

// fetch() POST Requests V
// Information to reach API
const apiKey = "<kheviol>";
const url = "https://api.rebrandly.com/v1/links";

// Some page elements
const inputField = document.querySelector("#input");
const shortenButton = document.querySelector("#shorten");
const responseField = document.querySelector("#responseField");

// AJAX functions
const shortenUrl = () => {
  const urlToShorten = inputField.value;
  const data = JSON.stringify({ destination: urlToShorten });
  fetch(url, {
    method: "POST",
    headers: {
      "Content-type": "application/json",
      apikey: apiKey,
    },
    body: data,
  })
    .then(
      (response) => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Request failed!");
      },
      (networkError) => {
        console.log(networkError.message);
      }
    )
    .then((jsonResponse) => {
      renderResponse(jsonResponse);
    });
};

// Clear page and call AJAX functions
const displayShortUrl = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
};

shortenButton.addEventListener("click", displayShortUrl);

// async GET Requests I
const getData = async () => {
  try {
    const response = await fetch("https://api-to-call.com/endpoint");
    if (response.ok) {
      const jsonResponse = await response.json();
      return jsonResponse;
    }
    throw new Error("Request failed!");
  } catch (error) {
    console.log(error);
  }
};
