//Exemplo 1: Faça a leitura da porta analógica A0 (PA0) e imprima na serial. Mantenha
//um LED em 1Hz no pino 7
//Exercício 1: A partir do exemplo anterior, imprima o valor do potenciômetro em volts

#define LED0 7
#define potenciometro A0

int pot_valor = 0;
float pot_valor_V = 0;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
}

void loop() {
  pot_valor = analogRead(potenciometro);
  digitalWrite(LED0, !digitalRead(LED0));
  delay(500);
  pot_valor_V = (pot_valor*4.88)/1000;
  Serial.println(String("Entrada: ") + String(pot_valor_V) + String(" Volts"));
}
