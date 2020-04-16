% Desenvolvido por Gabriel Rezende Atualização 02 dia 12/04/2020
clear,clc
%Programa desenvolvido para c�lculos referentes a um transformador para isso voc� deve informar todos os parametros sobre o mesmo.
disp ('Programa desenvolvido para ser usado em calculo de transformadores e seus parametros em funcionamento em plena carga')
disp('Desenvolvido por Gabriel Rezende')
A=input('Numero de espiras do enrolamento primario: ');
B=input('Numero de espiras do enrolamento secundario: ');
F=input('Valor de tensao superior: ');
G=input(' Valor de tensao inferior: ');
H=input('Informe o valor da potencia nominal: ');
Alfa= F/G;
INTI=(Alfa*J);
disp('Informe agora os valores obtidos no ensaio de circuito aberto agora:');
C=input(' Leitura do voltimetro: ');
D=input('Leitura do wattimetro: ');
E= input(' Leitura do amperimetro: ');
CosO= D/(C*E);
O=acosd(CosO);
SenO= sind(O);
IHF= E*CosO;
IM= E*SenO;
Rm= G/IHF;
Xm= G/IM;
Svazio=G*E;
Qvazio= G*E*SenO;
Pvazio=G*E*CosO;
disp(' Entre com os dados do ensaio de curto-circuito agora:')
I=input('Leitura do voltimetro: ');
J=input('Leitura do amperimetro: ');
K=input('Leitura do wattimetro: ');
CosOcc=K/(I*J);
Occ=acosd(CosOcc);
SenOcc=sind(Occ);
Scc=I*J;
Qcc=I*J*SenOcc;
Pcc=K;
RE1ensaio=Pcc/(J^2);
ZE1ensaio=I/J;
XE1ensaio=sqrt(ZE1ensaio^2-RE1ensaio^2);
RE2ensaio= RE1ensaio/Alfa^2;
XE2ensaio= XE1ensaio/Alfa^2;
ZE2ensaio= ZE1ensaio/Alfa^2;
QZensaio=(I/F)*100;
QRensaio=((RE1ensaio*J)/F)*100;
QXensaio=((XE1ensaio*J)/F)*100;
L=input('Temperatura de operacao do transformador: ');
N=input('Temperatura de ensaio: ');
a=input('T do material usado: ');
RE1operacao= (RE1ensaio/(a+N))*(a+L);
XE1operacao=XE1ensaio;
ZE1operacao=sqrt(RE1operacao^2+XE1operacao^2);
RE2operacao=RE1operacao/Alfa^2;
XE2operacao=XE1ensaio/Alfa^2;
ZE2operacao= ZE2ensaio/Alfa^2;
QRoperacao=((RE1operacao*J)/F)*100;
QXoperacao=QXensaio;
QZoperacao=sqrt(QRoperacao^2+QXoperacao^2);
Regulacaomaximatensaoensaio=QZensaio;
Regulacaomaximaooperacao=QZoperacao;
ICCtsensaio=J/(QZensaio/100);
Icctsoperacao=J/(QZoperacao/100);
Icctiensaio=(Alfa*J)/(QZensaio/100);
Icctioperacao=(Alfa*J)/(QZoperacao/100);
clc;
disp('Resultados obtidos ensaio a vazio')
disp('Alfa')
disp(Alfa)
disp('Cosseno O vazio')
disp(CosO)
disp('Angulo O vazio ')
disp(O)
disp('Seno O vazio ')
disp(SenO)
disp('IHF')
disp(IHF)
disp('IM')
disp(IM)
disp('Rm')
disp(Rm)
disp('Xm')
disp(Xm)
disp('Potencia ativa')
disp(Pvazio)
disp('Potencia aparente a vazio')
disp(Svazio)
disp('Potencia reativa a vazio')
disp(Qvazio)
x=input('Gostaria de ver os resultados do ensaio de curto circuito ? (1) Sim (2)Nao')
if x==1
  disp('Cosseno de Occ')
  disp(CosOcc)
  disp('Angulo Occ')
  disp(Occ)
  disp('Seno Occ')
  disp(SenOcc)
  disp('Potencia aparente cc')
  disp(Scc)
  disp('Potencia reativa cc')
  disp(Qcc)
  disp('Potencia real cc')
  disp(Pcc)
  disp('RE1 de ensaio')
  disp(RE1ensaio)
  disp('XE1 de ensaio')
  disp(XE1ensaio)
  disp('ZE1 de ensaio')
  disp(ZE1ensaio)
  disp('RE2 de ensaio')
  disp(RE2ensaio)
  disp('XE2 de ensaio')
  disp(XE2ensaio)
  disp('ZE2 de ensaio')
  disp(ZE2ensaio)
  disp('QZ ensaio')
  disp(QZensaio)
  disp('QR de ensaio')
  disp(QRensaio)
  disp('QX de ensaio')
  disp(QXensaio)
  disp('RE1 de operacao')
  disp(RE1operacao)
  disp('XE1 de operacao')
  disp(XE1operacao)
  disp('ZE1 de operacao')
  disp(ZE1operacao)
  disp('RE2 de operacao')
  disp(RE2operacao)
  disp('XE2 de operacao ')
  disp(XE2operacao)
  disp('ZE2 de operacao')
  disp(ZE2operacao)
  disp('QR de operacao')
  disp(QRoperacao)
  disp('QX de operacao')
  disp(QXoperacao)
  disp('QZ operacao')
  disp(QZoperacao)
  disp('Regulacao maxima de tensao ensaio')
  disp(Regulacaomaximatensaoensaio)
  disp('Regulacao maxima em operacao ')
  disp(Regulacaomaximaooperacao)
  disp('ICCts de ensaio')
  disp(ICCtsensaio)
  disp('ICCts operacao')
  disp(Icctsoperacao)
  disp('ICCti ensaio')
  disp(Icctiensaio)
  disp('ICCti operacao')
  disp(Icctioperacao)
else
  disp('Obrigado por utilizar esse programa') 
  clear,clc
end
%
