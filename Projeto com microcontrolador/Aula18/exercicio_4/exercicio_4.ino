//Exercício 4: Faça o controle do delay do LED com a função millis() (aula 16). Faça a
//impressão na serial a cada 500ms também utilizando millis().

#define LED0 7
#define potenciometro A0

int pot_valor, pot_valor_delay = 0;
int delay_serial = 500;
unsigned long ultima_leitura_led, ultima_leitura_serial;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
}

void loop() {
  pot_valor = analogRead(potenciometro);
  pot_valor_delay = map(pot_valor, 0, 1023, 100, 1000);
  if ((millis() - ultima_leitura_led) >= pot_valor_delay){
    digitalWrite(LED0, !digitalRead(LED0));
    ultima_leitura_led = millis();
  }
  
  if ((millis() - ultima_leitura_serial) >= delay_serial){
    Serial.println(pot_valor_delay);
    ultima_leitura_serial = millis();  
  }
  

  
}
