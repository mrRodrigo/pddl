# Planejador pddl
Um agente tem como propósito fechar as janelas e portas, bem como
apagar as luzes das salas do térreo de um prédio, após um dia de trabalho.
As salas estão conectadas conforme a imagem abaixo. Para apagar (ou
acender) a luz de uma sala ou para fechar (ou abrir) uma janela desta
sala, o agente deve estar nesta sala. Para fechar a porta de uma sala, ele
deve estar do lado de fora desta sala. O agente só consegue entrar em uma
sala, se ele estiver em um local que permite acesso à esta sala e a porta
desta sala estiver aberta. Ele acende as luzes para fechar as janelas e ao
sair da sala, deve apagar as luzes e fechar a porta.

![](/Screenshot_1.png)

Defina o conjunto de predicados e ações necessários para resolver esse
problema e as escreva em PDDL. Teste a sua implementação com um
problema, no qual o estado inicial são as salas com as luzes acesas, janelas
e portas abertas, e o estado final estão todas as portas e janelas fechadas
com todas as luzes apagadas.
