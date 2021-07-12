let Next = document.getElementsByClassName('Next')
let Prev = document.getElementsByClassName('Prev')

let Slider = document.querySelectorAll(".Slider")

console.log(Slider)

let Tamaño = [
    681, 988, 800, 719
]
let aux= 0;

Slider.forEach(function (Slider) {
    let cont = 0
    const Next = Slider.nextElementSibling;
    const Prev = Slider.previousElementSibling
    console.log(Slider.children)

    Prev.onclick = function () {
        cont--

        if (cont === -1) {
            cont = Slider.children.length - 1;
        }
        for (let i in Slider.children) {
            const li = Slider.children[i];

            li.style.transform = "translateX(-" + cont + "00%)";
            Slider.style.maxWidth = Tamaño[cont] + "px"
        }


    }
    Next.onclick = function () {
        cont++

        if (cont === Slider.children.length) {
            cont = 0;
            aux = 0;
        }
        else {
            aux += Tamaño[cont - 1]
        }
        
        for (let i in Slider.children) {
            const li = Slider.children[i];
            Slider.style.maxWidth = Tamaño[cont] + "px"
            
            li.style.transform = "translateX(-" +(aux) +"px)";
            
        }
    }
})