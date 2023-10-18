console.log("Hello from the console!");

// Your code here

fetch(
  "https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b"
)
  .then((response) => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error(response);
    }
  })
  .then(
    (data) => {
      console.log("Success");
      console.log(data);
    },

    (errorResponse) => {
      console.log("Failure");
      console.log(errorResponse);
    }
  );
