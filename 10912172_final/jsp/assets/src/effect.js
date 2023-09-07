let bg = document.getElementById('topimg')
let count = 20
for(let i=0;i<count;i++){
    let glitchbox = document.createElement('div')
    glitchbox.className = 'box'
    bg.appendChild(glitchbox)
}

setInterval(()=>{
    let glitch = document.getElementsByClassName('box')
    for(let i=0;i<glitch.length;i++){
        glitch[i].style.left=Math.floor(Math.random()*100)+'vw'
        glitch[i].style.top=Math.floor(Math.random()*100)+'vh'
        glitch[i].style.width=Math.floor(Math.random()*400)+'px'
        glitch[i].style.height=Math.floor(Math.random()*100)+'px'
        glitch[i].style.backgroundPostion=Math.floor(Math.random()*500)+'vw'
    }
}, 200)

$(document).ready(function() {
    $('.bxslider').bxSlider({
        auto: true,
        pause: 50000,
// in millisecond
        autoHover: true, // pause on hover
        autoControls: true,
        captions: false
    });
});