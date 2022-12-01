#define LED0 7
#define BOTAO 2

void setup() {
  pinMode(LED0, OUTPUT);
  pinMode(BOTAO, INPUT_PULLUP);

}

void loop() {
  if (digitalRead(BOTAO))
    digitalWrite(LED0, LOW);
  else
    digitalWrite(LED0, HIGH);
}
