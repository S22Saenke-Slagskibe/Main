/*import controlP5.*;

ControlP5 cp5;
DropdownList districts;
DropdownList wines;

void setup() {
  size(1000, 800);

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
    .addItem("Champagne", 2 );

  // create a dropdown menu for wines
  wines = cp5.addDropdownList("wines")
    .setPosition(50, 250)                     //!!!der er ikke konflikt mellem districys og vines dropdown menu når jeg sætter y kordinat til 250 i stedet for 90...-simpel løsnng, men det er ikke den måde jeg vil have min dropdown menu til at se ud
    .setSize(300, 180)
    .setBarHeight(30)
    .setFont(createFont("Arial", 20))
    .setItemHeight(50)
    .hide();
}

void draw() {
  background(255);

  // display the selected district
  int selectedDistrict = (int) districts.getValue();

  // udfyld dropdownmenu for wine mht. det valgte distrikt
  switch (selectedDistrict) {
  case 0:
    wines.clear();
    wines.addItem("Chablis", 1);
    wines.addItem("Côte de Nuits", 2);
    wines.addItem("Côte de Beaune", 3);
    break;
  case 1:
    wines.clear();
    wines.addItem("Médoc", 1);
    wines.addItem("Saint-Emilion", 2);
    wines.addItem("Pomerol", 3);
    break;
  case 2:
    wines.clear();
    wines.addItem("Côte des Blancs", 1);
    wines.addItem("Montagne de Reims", 2);
    wines.addItem("Vallée de la Marne", 3);
    break;
  }
}
//funkcja przywracajaca widocznosc menu dla win po wybraniu danego dystryktu
// callback function for the districts dropdown
void controlEvent(ControlEvent event) {
  if (event.getController().getName().equals("districts")) {
    if (event.getController().getValue() > -1) {                      //bourgogne distrikt wines bliver vist når jeg indstiller detter til -1 i stedet for 0 men burde det ikke virke med 0???...hvad er fejlen i den 1ste version
      wines.show();
    } else {
      wines.hide();
    }
  }
}
*/
