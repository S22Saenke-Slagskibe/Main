import controlP5.*;
//Image[] bottle = new Image[8];
ControlP5 cp5;
DropdownList districts;
DropdownList wines;
PImage chablisImage;
PImage cotedenuitsImage;
PImage pomerolImage;


void setup() {
  size(1000, 800);

  chablisImage = loadImage("chablis.jpg");
   cotedenuitsImage = loadImage("cote de nuits.jpg");
   pomerolImage = loadImage("Pomerol.jpg");
  cp5 = new ControlP5(this);

  // create a dropdown menu for wine districts
  districts = cp5.addDropdownList("districts")
    .setPosition(50, 50)
    .setSize(300, 500)
    .setBarHeight(30)
    .setFont(createFont("Arial", 20))
    .setItemHeight(50)
    .addItem("Bourgogne", 0)
    .addItem("Bordeaux", 1)
    .addItem("Champagne", 2);

  // create a dropdown menu for wines
  wines = cp5.addDropdownList("wines")
    .setPosition(50, 90)
    .setSize(300, 180)
    .setBarHeight(30)
    .setFont(createFont("Arial", 20))
    .setItemHeight(50)
    .hide();

  // add a reset button to unselect the district
  cp5.addButton("reset")
    .setPosition(50, 700)
    .setSize(100, 50)
    .setLabel("Reset");

  // set the initial state
  reset();
}

void draw() {
  background(255);

  // display the selected district
  int selectedDistrict = (int) districts.getValue();

  // update the wines dropdown based on the selected district
  switch (selectedDistrict) {
    case 0:
      wines.clear();
      wines.addItem("Chablis", 0);
      wines.addItem("Côte de Nuits", 1);
      wines.addItem("Côte de Beaune", 2);
      if (wines.getValue() == 0) {
        image(chablisImage, 400, 50);
      }
      if (wines.getValue() == 1) {
        image(cotedenuitsImage, 390, 50);
cotedenuitsImage.resize(380,680);
      }
      break;
    case 1:
      wines.clear();
      wines.addItem("Médoc", 0);
      wines.addItem("Saint-Emilion", 1);
      wines.addItem("Pomerol", 2);
       /*if (wines.getValue() == 0) {
        image();
      }
      if (wines.getValue() == 1) {
        image();
      }*/
       if (wines.getValue() == 2) {
        image(pomerolImage,400,50);
        pomerolImage.resize(380,680);
       }
      break;
    case 2:
      wines.clear();
      wines.addItem("Côte des Blancs", 0);
      wines.addItem("Montagne de Reims", 1);
      wines.addItem("Vallée de la Marne", 2);
      break;
  }
}

// callback function for the districts dropdown
void controlEvent(ControlEvent event) {
  if (event.getController().getName().equals("districts")) {
    // show/hide the wines dropdown based on whether a district is selected
    if (event.getController().getValue() > -1) {
      wines.show();
    } else {
      wines.hide();
    }
  }
}

// callback function for the wines dropdown
void wineSelected(int selection) {
  String selectedItem = wines.getItem(selection).get("name").toString();
  if (selectedItem.equals("Chablis")) {
    image(chablisImage, 400, 50);
  }
}

// reset the dropdowns to their initial state
void reset() {
  districts.setValue(-1); // unselect the district
  
  wines.clear(); // clear the wines dropdown
  wines.hide(); // hide the wines dropdown
  imageMode(CORNER); // reset the image mode
}
