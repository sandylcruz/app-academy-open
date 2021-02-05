// HTTP Requests
console.log("First message!");
setTimeout(() => {
  console.log("This message will always run last...");
}, 0);
console.log("Second message!");

// XHR GET Requests I, II
const xhr = new XMLHttpRequest();
const url = "https://api-to-call.com/endpoint";
xhr.responseType = "json";
xhr.onreadystatechange = () => {
  if (xhr.readyState === XMLHttpRequest.DONE) {
    return xhr.response;
  }
};
xhr.open("GET", url);
xhr.send();

// XHR GET Requests III
// Information to reach API
const url = "https://api.datamuse.com/words?";
const queryParams = "rel_rhy=";
// Selecting page elements
const inputField = document.querySelector("#input");
const submit = document.querySelector("#submit");
const responseField = document.querySelector("#responseField");

// AJAX function
const getSuggestions = () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${queryParams}${wordQuery}`;

  const xhr = new XMLHttpRequest();
  xhr.responseType = "json";
  xhr.onreadystatechange = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      renderResponse(xhr.response);
    }
  };
  xhr.open("GET", endpoint);
  xhr.send();
};

// Clear previous results and display results to webpage
const displaySuggestions = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener("click", displaySuggestions);

// XHR Get Requests IV
// Information to reach API
const url = "https://api.datamuse.com/words?";
const queryParams = "rel_rhy=";

// Selecting page elements
const inputField = document.querySelector("#input");
const topicField = document.querySelector("#topic");
const submit = document.querySelector("#submit");
const responseField = document.querySelector("#responseField");
const queryParams = "rel_jjb=";
const additionalParams = "&topics=";

// AJAX function
const getSuggestions = () => {
  const wordQuery = inputField.value;
  const topicQuery = topicField.value;
  const endpoint = `${url}${queryParams}${wordQuery}${additionalParams}${topicQuery}`;

  const xhr = new XMLHttpRequest();
  xhr.responseType = "json";

  xhr.onreadystatechange = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      renderResponse(xhr.response);
    }
  };

  xhr.open("GET", endpoint);
  xhr.send();
};

// Clear previous results and display results to webpage
const displaySuggestions = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener("click", displaySuggestions);

// XHR Post Requests I
const xhr = new XMLHttpRequest();
xhr.responseType = "json";
xhr.onreadystatechange = () => {
  if (xhr.readyState === XMLHttpRequest.DONE) {
    return xhr.response;
  }
};
xhr.open("POST", url);
xhr.send(data);
const url = "https://api-to-call.com/endpoint";
const data = JSON.stringify({ id: "200" });

// XHR Post Requests III
const apiKey = "<kheviol>";
const url = "https://api.rebrandly.com/v1/links";

const inputField = document.querySelector("#input");
const shortenButton = document.querySelector("#shorten");
const responseField = document.querySelector("#responseField");

const shortenUrl = () => {
  const urlToShorten = inputField.value;
  const data = JSON.stringify({ destination: urlToShorten });
  const xhr = new XMLHttpRequest();
  xhr.responseType = "json";
  xhr.onreadystatechange = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      renderResponse(xhr.response);
    }
  };
  xhr.open("POST", url);
  xhr.setRequestHeader("Content-type", "application/json");
  xhr.setRequestHeader("apikey", apiKey);
  xhr.send(data);
};

const displayShortUrl = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
};

shortenButton.addEventListener("click", displayShortUrl);

// Post Requests IV

const url = "https://api.datamuse.com/words?";
const queryParams = "rel_jja=";

const inputField = document.querySelector("#input");
const submit = document.querySelector("#submit");
const responseField = document.querySelector("#responseField");

const getSuggestions = async () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${queryParams}${wordQuery}`;
  try {
    const response = await fetch(endpoint, { cache: "no-cache" });
    if (response.ok) {
      const jsonResponse = await response.json();
      renderResponse(jsonResponse);
    }
  } catch (error) {
    console.log(error);
  }
};

const displaySuggestions = (event) => {
  event.preventDefault();
  while (responseField.firstChild) {
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener("click", displaySuggestions);

// async Post Requests II
const getData = async () => {
  try {
    const response = await fetch("https://api-to-call.com/endpoint", {
      method: "POST",
      body: JSON.stringify({ id: 200 }),
    });
    if (response.ok) {
      const jsonResponse = await response.json();
      return jsonResponse;
    }
    throw new Error("Request failed!");
  } catch (error) {
    console.log(error);
  }
};

// Async POST Requests III

// information to reach API
const apiKey = "<kheviol>";
const url = "https://api.rebrandly.com/v1/links";

// Some page elements
const inputField = document.querySelector("#input");
const shortenButton = document.querySelector("#shorten");
const responseField = document.querySelector("#responseField");

// AJAX functions
// Code goes here
const shortenUrl = async () => {
  const urlToShorten = inputField.value;
  const data = JSON.stringify({ destination: urlToShorten });
  try {
    const response = await fetch(url, {
      method: "POST",
      body: data,
      headers: {
        "Content-type": "application/json",
        apikey: apiKey,
      },
    });

    if (response.ok) {
      const jsonResponse = await response.json();
      renderResponse(jsonResponse);
    }
  } catch (error) {
    console.log(error);
  }
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
