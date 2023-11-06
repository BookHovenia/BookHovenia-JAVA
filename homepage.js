const carousel = document.querySelector(".book-wrapper");
const arrowBtn = document.querySelectorAll(".book-wrapper i");
const firstCardWidth = carousel.querySelector(".book-content").offsetWidth;

arrowBtn.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel.scrollLeft += btn.id === "left" ? -firstCardWidth : firstCardWidth;
    })
});
