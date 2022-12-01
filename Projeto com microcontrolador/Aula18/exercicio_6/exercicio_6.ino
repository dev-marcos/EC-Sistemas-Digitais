//Exercício 6: Faça o controle por PWM de um LED no pino 9 de acordo com o
//valor lido em um potenciômetro.

#define LED0 9
#define potenciometro A0

int pot_valor, brightness = 0;
unsigned long ultima_leitura_serial;
int delay_serial = 0;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
}

void loop() {
 
    pot_valor = analogRead(potenciometro);
    brightness = map(pot_valor, 0, 1023, 0, 255);
    analogWrite(LED0, brightness);

    if ((millis() - ultima_leitura_serial) >= delay_serial){
      Serial.println(brightness);
      ultima_leitura_serial = millis();  
    }
      
}
