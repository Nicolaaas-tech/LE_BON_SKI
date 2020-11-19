const showbooking = () => {
  const button = document.querySelector(".btnbook");
  button.addEventListener('click', (event) => {
    document.querySelector("#calendar").classList.remove("d-none")
  });
};

export {showbooking};

