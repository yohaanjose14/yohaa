var cat, mouse, catImg, mouseImg;
var background, backgroundImg;
var catImg2, catImg3;
var mouseImg2

function preload() {
    catImg= loadImage(cat1.png);
    mouseImg= loadImage(mouse1.png);
    backgroundImg= loadImage(garden.png);
    catImg2= loadImage(cat2.png);
    catImg3= loadImage(cat3.png);
    mouseImg2= loadImage(mouse2.png);
}

function setup(){
    createCanvas(1000,800);
    background= createSprite(1000,800);
    background.addImage(backgroundImg);
    cat=createSprite(800,800,20,20);
    cat.addImage(catImg);
    mouse=createSprite(200,800,20,20);
    mouse.addImage(mouseImg);


}

function draw() {

    background(255);
    Text(mouseX+','+mouseY, 10,45);
    if(cat.x - mouse.x<(cat.width - mouse.width)/2){
        cat.addAnimation("catLastImage", catImg3);
        cat.changeAnimation("catLastImage");
        mouse.addAnimation("mouseStartled", mouseImg2);
        mouse.changeAnimation("mouseStartled");
    }



    drawSprites();
}


function keyPressed(){
if(keyCode === LEFT_ARROW){
cat.velocityX=-5;
cat.addAnimation("catRunning", catImg2);
cat.changeAnimation('catRunning');
}
  //For moving and changing animation write code here


}
