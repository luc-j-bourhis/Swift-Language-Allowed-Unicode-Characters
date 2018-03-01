function on_click_font_button() {
    document.getElementById("my_font_menu").classList.toggle("show")
}

window.onclick = function(event) {
    if (!event.target.matches(".drop_button")) {
        document.querySelectorAll(".dropdown_content").forEach(
            function(element, index, array) {
                if (element.classList.contains("show")) {
                    element.classList.remove("show")
                }
            }
        )
    }
}

function update_character_table_font(font) {
    document.querySelectorAll(".character_table").forEach(
        function(element, index, array) {
            element.style.fontFamily = font;
        }
    )
}

function select_my_font(clicked) {
    font = clicked.dataset.fonts;
    document.querySelectorAll("#my_font_menu a").forEach(
        function(element, index, array) {
            if (element.classList.contains("selected")) {
                element.classList.remove("selected")
            }
        }
    )
    clicked.classList.toggle("selected")
    update_character_table_font(font);
}

function initialise_my_font() {
    items = document.querySelectorAll("#my_font_menu a")
    items[0].classList.toggle("selected")
    font = items[0].dataset.fonts;
    update_character_table_font(font);
}
