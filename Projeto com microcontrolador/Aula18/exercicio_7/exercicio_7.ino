//Exercício 7: A partir do potenciômetro, faça o controle por PWM de um LED
//no pino 9 e o controle por frequência de um outro LED no pino 7 (exercício 4).

#define LED0 7
#define PWM_LED 9
#define potenciometro A0

int pot_valor, pot_valor_delay, brightness = 0;
unsigned long ultima_leitura_led, ultima_leitura_serial;
int delay_serial = 0;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
  pinMode(PWM_LED, OUTPUT);
}

void loop() {
 
  pot_valor = analogRead(potenciometro);
  brightness = map(pot_valor, 0, 1023, 0, 255);
  pot_valor_delay = map(pot_valor, 0, 1023, 100, 1000);
  
  analogWrite(PWM_LED, brightness);
  
  if ((millis() - ultima_leitura_led) >= pot_valor_delay){
    digitalWrite(LED0, !digitalRead(LED0));
    ultima_leitura_led = millis();
  }

  if ((millis() - ultima_leitura_serial) >= delay_serial){
    Serial.println(brightness);
    ultima_leitura_serial = millis();  
  }
      
}
