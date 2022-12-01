//Exercício 3: Altere a frequência do LED de acordo com a entrada analógica. Sendo que
//a frequência irá variar de 0,5Hz (1000 ms cada delay), até o 5Hz (100 ms cada delay).
//Imprima o valor que está no delay.

#define LED0 7
#define potenciometro A0

int pot_valor = 0;
int pot_valor_delay = 0;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
}

void loop() {
  pot_valor = analogRead(potenciometro);
  pot_valor_delay = map(pot_valor, 0, 1023, 100, 1000);
  digitalWrite(LED0, !digitalRead(LED0));
  delay(pot_valor_delay);
  Serial.println(pot_valor_delay);
}
