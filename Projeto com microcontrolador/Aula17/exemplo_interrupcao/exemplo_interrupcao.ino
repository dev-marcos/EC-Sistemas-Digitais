#define LED0 7
#define BOTAO 2

int contagem = 0;

void setup() {
  pinMode(LED0, OUTPUT);
  pinMode(BOTAO, INPUT_PULLUP);
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(BOTAO),botao_pressionado,FALLING);

}

void loop() {
  Serial.println("Executando Loop principal");
  delay(500);
}

void botao_pressionado(){
  Serial.println("Executando rotina de interrupção");
  if (!digitalRead(BOTAO)){
    delay(50);
    while(!digitalRead(BOTAO)){}
    delay(50);
    contagem++;
    digitalWrite(LED0, !digitalRead(LED0));
    
  }
}
