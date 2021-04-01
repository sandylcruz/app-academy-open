export const fetchBenches = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: "/api/benches",
      success: (bench) => {
        resolve(bench);
      },
      reject: (error) => {
        console.log(error);
      },
    });
  });
};
