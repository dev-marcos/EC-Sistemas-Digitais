#define LED0 7
#define BOTAO 2

int contagem = 0;

void setup() {
  pinMode(LED0, OUTPUT);
  pinMode(BOTAO, INPUT_PULLUP);
  Serial.begin(9600);

}

void loop() {
  if (!digitalRead(BOTAO)){
    delay(50);
    while(!digitalRead(BOTAO)){}
    delay(50);
    contagem++;
    Serial.println("Contagem atual: " +String(contagem));
    digitalWrite(LED0, !digitalRead(LED0));
  }
}
