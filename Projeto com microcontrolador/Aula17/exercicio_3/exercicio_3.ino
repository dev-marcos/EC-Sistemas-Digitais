#define LED0 7
#define BOTAO 2

void setup() {
  pinMode(LED0, OUTPUT);
  pinMode(BOTAO, INPUT_PULLUP);

}

void loop() {
  if (!digitalRead(BOTAO)){
    delay(50);
    while(!digitalRead(BOTAO)){}
    delay(50);
    digitalWrite(LED0, !digitalRead(LED0));
  }
}
