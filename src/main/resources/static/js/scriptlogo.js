let etiqA=document.getElementsByClassName('asvg');
let svgRedes=document.getElementsByClassName('redesSvg')

for (let index = 0; index < etiqA.length; index++) {
    etiqA[index].addEventListener('mouseover', function() {
        svgRedes[index].style.filter="brightness(0) invert(1)";
        this.style.background="#024059";
    })

    etiqA[index].addEventListener('mouseout', function() {
        svgRedes[index].style.filter="none";
        this.style.background="#EBEBEB";
    })
    
}