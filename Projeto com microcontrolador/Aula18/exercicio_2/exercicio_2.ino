//Exercício 2: Altere a frequência do LED de acordo com a entrada analógica. Sendo que
//a frequência irá variar de em torno de 0,5Hz (1023 ms cada delay), até o LED parecer
//sempre ligado.

#define LED0 7
#define potenciometro A0

int pot_valor = 0;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
}

void loop() {
  pot_valor = analogRead(potenciometro);
  digitalWrite(LED0, !digitalRead(LED0));
  delay(pot_valor);
  Serial.println(pot_valor);
}
