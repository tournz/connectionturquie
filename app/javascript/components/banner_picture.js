const pictureArray = [ 'Istanbul_skyline.jpg', '15_Temmuz_köprüsü.jpg', 'FSM_bridge.jpg', 'Tour_de_Leandre.jpg', 'Mosquee_Bleue.jpg' ];
let current = 0

//This function does not work yet, TO BE IMPROVED !!!
const pictureChange = () => {
  const banner = document.querySelector(".home-banner");
  let bgI_value = 'url('+ pictureArray[current] + ')';
  console.log(bgI_value);
  banner.style.backgroundImage = bgI_value;
  console.log(current);
  current ++;
  current = current % pictureArray.length;
}

const changeBackgroundPicture = () => {
  setInterval(pictureChange, 3000)
}

export { changeBackgroundPicture };
