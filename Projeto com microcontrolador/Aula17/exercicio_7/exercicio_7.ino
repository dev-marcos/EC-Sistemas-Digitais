#define LED0 7
#define BOTAO 2

int contagem = 0;
bool flag = true;

void setup() {
  pinMode(LED0, OUTPUT);
  pinMode(BOTAO, INPUT_PULLUP);
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(BOTAO),botao_pressionado,FALLING);

}

void loop() {
  if (flag){
    Serial.println("Botão pressionado : " + String(contagem));
    flag = false;  
  }
  if (contagem == 20){
     detachInterrupt(digitalPinToInterrupt(BOTAO));
     digitalWrite(LED0, HIGH);
  }
}

void botao_pressionado(){
  contagem++;
  flag = true;  
}
