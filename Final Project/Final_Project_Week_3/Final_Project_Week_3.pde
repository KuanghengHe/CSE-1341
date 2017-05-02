ArrayList<Guardrail> guardrails = new ArrayList<Guardrail>();

Car myCar;
//float gameSpeed = ;
float nextSpawnTime = 20;

void setup() {
  frameRate(50);
  size(800,1000);
  noCursor();
  background(15);
  myCar = new Car();
}

void draw() {
  colorMode(DIFFERENCE);
  myCar.setLocation();
  
  if (millis() > nextSpawnTime) {
    nextSpawnTime = nextSpawnTime + nextSpawnTime;
    guardrails.add(new Guardrail());
  }
  for (int i=guardrails.size()-1; i>=0; i--) {
    guardrails.get(i).drawShape();
    guardrails.get(i).move();
    if (!guardrails.get(i).exist) {
      guardrails.remove(i);
    }
  }
  
}