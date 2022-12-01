//Exercício 5: Ligue ou desligue o controle do LED a partir da serial, digitando ON ou OFF.
//Quando digitar OFF, deve imprimir “LED desligado” uma vez e desligar o LED. Consulte
//a aula 16.

#define LED0 7
#define potenciometro A0

int pot_valor, pot_valor_delay = 0;
int delay_serial = 500;
unsigned long ultima_leitura_led, ultima_leitura_serial;

String comando;

void setup() {
  Serial.begin(9600);
  pinMode(LED0, OUTPUT);
}

void loop() {
  if (Serial.available()>0){
    comando = Serial.readString();

    if (comando.startsWith("OFF")){
      Serial.println("LED desligado");
      digitalWrite(LED0, LOW);
    }
  }
  if (comando.startsWith("ON")){
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
}
