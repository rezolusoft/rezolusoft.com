document.querySelector(".offcanvas-open-btn").addEventListener("click", function () {
  
    document.querySelector(".offcanvas__area").classList.add("offcanvas-opened");
    document.querySelector(".body-overlay").classList.add("opened");
}
);
document.querySelector(".offcanvas-close-btn").addEventListener("click", function () {

    document.querySelector(".offcanvas__area").classList.remove("offcanvas-opened");
    document.querySelector(".body-overlay").classList.remove("opened");
}
);

