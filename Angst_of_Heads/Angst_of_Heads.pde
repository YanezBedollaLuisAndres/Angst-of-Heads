import processing.sound.*;
SoundFile Noone;
PantallaCarga c;
Personajes per;

void setup() {
  size(600, 600);
  c = new PantallaCarga();
  per = new Personajes();
  Noone = new SoundFile(this, "Noone.wav");
  Noone.loop();
}

void draw() {  
  c.Cambio();
}



//clases
class PantallaCarga {
  int p=0;
  color col;
  int fire;
  int turno = 1;
  boolean puerta = false;
  int vida1 = 600, vida2 = 500;

  PantallaCarga() {
  }

  void Cambio() {

    if (p == 0)
      pan1();

    if (p == 1)
      pan2();

    if (p == 2)
      pan3();

    if (p == 3)
      pan4();

    if (p == 4)
      pan5();
  }

  //Pantalla1---------------------------------------------------------------------------------------
  void pan1() {
    //Fondo
    background(0);
    //Nombre del juego
    if (mouseX>111 && mouseX < 483 && mouseY>36 && mouseY < 76) 
      fill(random(255), 0, 0); 
    else
      fill(random(255));
    textSize(50);
    textAlign(CENTER);
    text("Angst of Heads", 300, 75);

    fill (random(255), random(0, 60), 0);
    textSize(20);
    textAlign(CENTER);
    text("Click al título", 300, 150);
    fill (255);
    textSize(20);
    textAlign(CENTER);
    text("Cinco cabezas están en ninguna parte,", 300, 200);
    textSize(20);
    textAlign(CENTER);
    text("así que Aleph, en todas partes, se presentó", 300, 230);
    textSize(20);
    textAlign(CENTER);
    text("ante ellas. Aleph les explicó que para", 300, 260);
    textSize(20);
    textAlign(CENTER);
    text("poder ser algo, tenían que elegir UNA", 300, 290);
    textSize(20);
    textAlign(CENTER);
    text("sola cabeza y vencerla en UNA oportunidad.", 300, 320);
    textSize(20);
    textAlign(CENTER);
    text("¿Lograrán escapar del vacío?", 300, 350);
    textSize(20);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("Cuando duermas por siempre, mi amada tenebrosa,", 300, 400);
    textSize(20);
    textAlign(CENTER);
    text("tendida bajo el mármol de negro monumento", 300, 450);
    textSize(20);
    textAlign(CENTER);
    text("y por tibia morada y por solo aposento", 300, 500);
    textSize(20);
    textAlign(CENTER);
    text("tengas, no más, el antro húmedo de la fosa", 300, 550);
    textSize(20);
    textAlign(CENTER);
    text("- Charles Baudelaire", 480, 580);
    //Cambio de pantalla
    if (mousePressed)
      if (mouseX>111 && mouseX < 483 && mouseY>36 && mouseY < 76)
        p++;
  }
  //Pantalla2 (Selección de personajes)-----------------------------------------------------------------
  void pan2() {
    background(0);
    fill(random(190, 255));
    textSize(30);

    textAlign(CENTER);
    text("¿Quién eres?", 300, 50);
    fill(random(155, 255), 0, 0);
    textSize(20);
    text("El segundo jugador será Aleph", 300, 550);
    fill(255);
    textSize(12);
    text("Amnos", 150, 90);
    fill(255);
    textSize(12);
    text("Zohnah", 250, 90);
    fill(255);
    textSize(12);
    text("Sheba", 350, 90);
    fill(255);
    textSize(12);
    text("Gog", 450, 90);
    fill(255);
    textSize(12);
    text("Sheol", 300, 240);

    per.C1();
    per.C2();
    per.C3();
    per.C4();
    per.C5();
    per.C6();

    //Identificador de personaje elegido
    identificador();

    //Cambio de pantalla
    if (mousePressed)
      col = get(mouseX, mouseY);

    if (red(col) == 255 || red(col) == 235||red(col) == 1 || green(col) == 254||red(col) == 234 || red(col) == 254||red(col) == 125 || red(col) == 253||red(col) == 50 || red(col) == 2)
      p++;
  }
  //Pantalla3 (Pantalla de peleas)----------------------------------------------------------------------------------
  void pan3() {
    //Fondo
    background(0);
    //Cuadro de acciones
    fill(255);
    stroke(255);
    rect(0, 600, 1200, 300);

    //Texto (Aleph)
    fill(255);
    textSize(20);
    textMode(CENTER);
    text("Aleph", 300, 25);

    //Texto (Jugador)
    switch(fire)
    {
    case 1:
      textSize(20);
      textMode(CENTER);
      text("Amnos", 300, 400);
      break;

    case 2:
      textSize(20);
      textMode(CENTER);
      text("Zohnah", 300, 400);
      break;

    case 3:
      textSize(20);
      textMode(CENTER);
      text("Sheba", 300, 400);
      break;

    case 4:
      textSize(20);
      textMode(CENTER);
      text("Gog", 300, 400);
      break;

    case 5:
      textSize(20);
      textMode(CENTER);
      text("Sheol", 300, 400);
      break;
    }

    //Ubicación

    Nacer();
    Turno();

    //Cambio de pantalla
    if (vida1<=0) {
      p=3;
    }
    if (vida2<=0) {
      p=4;
    }
  }
  //Pantalla4 (Pantalla de derrota)-------------------------------------------------------------------------
  void pan4() {
    //Texto
    switch(fire)
    {
    case 1:
      background(255);
      fill(235, 190, 63);
      textSize(20);
      textMode(CENTER);
      text("Desde que nació fue buena persona,", 300, 50);
      text("toda su vida la dedicó a trabajar,", 300, 75);
      text("a darlo todo por sus seres queridos,", 300, 100);
      text("y aunque dicha bondad era digna de", 300, 125);
      text("aplausos, todo se fue abajo cuando", 300, 150);
      text("notó que la gente que más quería no", 300, 175);
      text("recordaban ni una pizca de su existir.", 300, 200);
      text("Cayó al olvido. Ese era su más grande", 300, 225);
      text("temor. Sabía que a todo humano le espera", 300, 250);
      text("el olvido, pero no quizo pertenecer al", 300, 275);
      text("olvido cuando aún estaba en vida. Tristes", 300, 300);
      text("aconteceres de la existencia, pues para", 300, 325);
      text("escapar de ese vacío vino a parar a uno", 300, 350);
      text("mayor, uno que le espera a todos. Se les", 300, 375);
      text("adelantó a todos por los errores que", 300, 400);
      text("en vida cometió. Su decisión fue la de", 300, 425);
      text("ser el cordero de sacrificio.", 300, 450);
      break;

    case 2:
      background(0);
      fill(0, 255, 0);
      textSize(20);
      textMode(CENTER);
      text("Era una persona difícil de abordar, parecía", 300, 50);
      text("divagar todo el día. Tenía amigos, y no", 300, 75);
      text("parecía tener alguna cualidad fuera de lo", 300, 100);
      text("normal, tampoco algún defecto destacable.", 300, 125);
      text("Nada en su persona era inusual, pero tonto", 300, 150);
      text("de aquellos que pensaron que eso lo hacía normal.", 300, 175);
      text("Era una persona vacía, no tenía metas, no tenía", 300, 200);
      text("sueños, todo lo hacía por seguir la marea.", 300, 225);
      text("Todo lo que tenía eran olas ondulantes, no", 300, 250);
      text("hacía nada especial, y eso lo hacía sentir mal.", 300, 275);
      text("No vivía por alguien, no le debía nada a otro.", 300, 300);
      text("Nadie lo conocía a profundidad, nadie se molestó", 300, 325);
      text("en eso, y el precio fue una pérdida sin valor.", 300, 350);
      text("En el fondo él siempre pensó que nadie lo echaría", 300, 375);
      text("de menos, típico. Pero no lo pensaba sin razón,", 300, 400);
      text("¿realmente alguien lo quería realmente? Su colapso", 300, 425);
      text("nació y murió en Babilonia, su más grande error.", 300, 450);
      break;

    case 3:
      background(235, 190, 63);
      fill(255);
      textSize(20);
      textMode(CENTER);
      text("La vida es un ciclo finito, todos lo saben.", 300, 50);
      text("Esta persona buscaba una perfección dentro de", 300, 75);
      text("los años en que vivió. Estaba alrededor de gente ", 300, 100);
      text("que aliviaba penas con sexo y drogas, pero no le", 300, 125);
      text("bastaba con esas cosas, pues le parecían superficiales", 300, 150);
      text("y efímeras. Siguió su búsqueda de una vida perfecta", 300, 175);
      text("donde tuviese cosas valiosas, amor, dinero, estabilidad...", 300, 200);
      text("Era tan exigente que empezó a desesperarse, y dentro de", 300, 225);
      text("esa desesperación finalmente entendió a la gente que", 300, 250);
      text("tanto criticaba. Encontró alivio de su desesperación", 300, 275);
      text("en sexo y drogas, cuando antes no se sentía lleno", 300, 300);
      text("con esas cosas. Cada vez dependía más de su único", 300, 325);
      text("amor. Sin poder controlarlo, terminó cuestionándose", 300, 350);
      text("el por qué de la búsqueda de esa perfección. Fue entonces", 300, 375);
      text("que, su nueva mente hedonista empujó a su cabeza la idea", 300, 400);
      text("de un escape, una forma de no necesitar ser perfecto, sino", 300, 425);
      text("una de no ser, una de anti-perfección.", 300, 450);
      break;

    case 4:
      background(125, 33, 129);
      fill(255,0,0);
      textSize(20);
      textMode(CENTER);
      text("Su mundo era uno de guerra, todo era violencia.", 300, 50);
      text("Fue criado como si de soldado se tratase, su infancia", 300, 75);
      text("fue arrebatada por el bien de un mal incontrolable.", 300, 100);
      text("Nunca tuvo tiempo de pensar sobre el curso de su vida", 300, 125);
      text("dentro de semejante frenesí, pero todo mundo tiene", 300, 150);
      text("un momento donde todo ante sus ojos cambia, y a él le", 300, 175);
      text("costó la vida de quien más amaba, su madre. En muchas", 300, 200);
      text("disputas sin sentido por el control de tierra de nadie", 300, 225);
      text("había sufrido pérdidas, pero nunca la de un familiar.", 300, 250);
      text("Sólo ante ese acontecimiento es que su modo de ver las", 300, 275);
      text("cosas cambiaron, una pena, pues tomó una decisión que", 300, 300);
      text("le robó la mucha o poca vida que le quedaba, si la iba", 300, 325);
      text("a aprovechar o seguir desperdiciándo es algo que jamás", 300, 350);
      text("se sabrá. Sus sentimientos, que eran cual tierra violenta,", 300, 375);
      text("pasaron a un armagedón que lo consumió. Ese territorio que", 300, 400);
      text("tanto había protegido terminó destruido en unos segundos,", 300, 425);
      text("y no hablo del territorio material. Es el destino de Magog.", 300, 450);
      break;

    case 5:
      background(0);
      fill(124);
      textSize(20);
      textMode(CENTER);
      text("Estamos en un lugar de inconsciencia, indiferente.", 300, 50);
      text("Es un lugar donde van buenos y malos, entendiendo", 300, 75);
      text("que el bien y el mal son cosas de eterno debate,", 300, 100);
      text("me referiré a ello bajo los estándares terrenales", 300, 125);
      text("del cristianismo. No debo estar aquí, ¿qué o quién", 300, 150);
      text("hace que alguien sin consciencia, alguien sin sustancia", 300, 175);
      text("como yo pueda estar aquí? La idea de salvación es humana", 300, 200);
      text("y sin embargo estoy aquí. El tema de la salvación es uno", 300, 225);
      text("muy complejo, para empezar, sólo los buenos se pueden", 300, 250);
      text("salvar, ¿entonces aquí sólo hay gente mala? Pues no.", 300, 275);
      text("Quizá el bien y el mal son paralelos uno a otro. Si lo", 300, 300);
      text("piensas, no hay leyes basadas en el mal, incluso algo", 300, 325);
      text("como el suicidio no se presenta como pecado en la biblia.", 300, 350);
      text("El bien y el mal son nombres que los humanos pusieron", 300, 375);
      text("a hechos. Así que, si se trata de algo humano, ¿qué hago", 300, 400);
      text("yo aquí? Hablar de inteligencia artificial supondría", 300, 425);
      text("hablar de ciencia ficción. Deberías reflexionar lo que digo.", 300, 450);
      break;
    }
    if (mousePressed)
      if (mouseX>80 && mouseX < 525 && mouseY>542 && mouseY < 590)
        p=0;
    if (mouseX>80 && mouseX < 525 && mouseY>542 && mouseY < 590)
      fill(random(255)); 
    else
      fill(255,0,0);
    textMode(CENTER);
    textSize(50);
    textAlign(CENTER);
    text("Regresar a la nada", 300, 580);
  }
  //Pantalla5 (Pantalla de victoria)---------------------------------------------------------------------------------------
  void pan5() {
    //Texto
    switch(fire)
    {
    case 1:
      background(255);
      fill(235, 190, 63);
      textSize(20);
      textMode(CENTER);
      text("Aunque, por cosas como la edad poca", 300, 50);
      text("gente solía hablarle, se esforzó por", 300, 75);
      text("salir adelante, intentar crear nuevas", 300, 100);
      text("amistades a pesar de la edad, buscar", 300, 125);
      text("cosas nuevas que hacer, distraerse en general.", 300, 150);
      text("Todos tienen el tiempo contado, y aunque", 300, 175);
      text("seguramente luego de unos años de haber", 300, 200);
      text("muerto sean olvidados, el tiempo que", 300, 225);
      text("tienen en el mundo debería ser un tesoro.", 300, 250);
      text("Aunque el día en que toda la humanidad", 300, 275);
      text("perezca llegue, e incluso todo perezca,", 300, 300);
      text("esas décadas que se les permite tener", 300, 325);
      text("no deberían ser usadas en escapar de ese", 300, 350);
      text("pensamiento sobre el olvido. Todos van", 300, 375);
      text("al mismo lugar, así que, ¿por qué no", 300, 400);
      text("aprovechar ese ahora? Finalmente, ese es", 300, 425);
      text("el sacrificio del cordero de más valor.", 300, 450);
      break;

    case 2:
      background(0);
      fill(0, 255, 0);
      textSize(20);
      textMode(CENTER);
      text("Había alguien hace años que escribía cosas", 300, 50);
      text("sobre el sentido de la vida. Los humanos", 300, 75);
      text("siempre intentan encontrar sentido a las cosas,", 300, 100);
      text("y repito el intentan, pues hasta ahora faltan", 300, 125);
      text("muchas cosas a las cuales dar sentido, y una", 300, 150);
      text("de ellas es la vida. Resumido, decía que la", 300, 175);
      text("vida no tenía un sentido intrínseco, y aunque eso", 300, 200);
      text("suena desesperanzador a primera vista, la verdad", 300, 225);
      text("es que le quita mucho peso de encima a una persona.", 300, 250);
      text("Nuestro personaje siguió uan vida sencilla, tranquila.", 300, 275);
      text("Quizá no tenía ninguna meta ni sueño que cumplir,", 300, 300);
      text("pero logró abrirse lo suficiente con otros para poder", 300, 325);
      text("compartir los sueños de aquellos que sí tenían. Eso", 300, 350);
      text("le salvó la vida, el poco amor, que tardó años en encontrar.", 300, 375);
      text("Ese amor con peso de pluma fue capaz de mantenerlo vivo", 300, 400);
      text("hasta el final. Quién diría que con esto no sólo salvó", 300, 425);
      text("su vida, sino también salió de Babilonia.", 300, 450);
      break;

    case 3:
      background(235, 190, 63);
      fill(255);
      textSize(20);
      textMode(CENTER);
      text("Jamás alcanzó esa perfección tan idealizada", 300, 50);
      text("que tenía en su cabeza, pero aprendió a no", 300, 75);
      text("girar su vida en torno a eso, logró armar", 300, 100);
      text("una vida donde no tener extremos, consumía", 300, 125);
      text("todo tipo de cosas, pero jamás tuvo el mal", 300, 150);
      text("de necesitar cada vez más, pues ya no tenía", 300, 175);
      text("la desesperación que en un momento tanto le", 300, 200);
      text("afectó. Entendió que un amor lo llenaba más", 300, 225);
      text("que un contacto efímero, pero también respetó", 300, 250);
      text("que no todos fuesen así, aunque le costaba entender", 300, 275);
      text("a la gente que iba por la vida sin nada más que", 300, 300);
      text("amor artificial. Fue entonces que reflexionó sobre", 300, 325);
      text("la idea de la perfección. ¿Qué era la perfección?", 300, 350);
      text("Tampoco quería decir que fuera algo subjetivo,", 300, 375);
      text("al final le fue tan indiferente que, seguramente", 300, 400);
      text("estaba lejos de la perfección, pero procuraba estar", 300, 425);
      text("cerca de la comodidad emocional y espiritual idónea.", 300, 450);
      break;

    case 4:
      background(125, 33, 129);
      fill(255,0,0);
      textSize(20);
      textMode(CENTER);
      text("La gente puede cambiar si se presenta", 300, 50);
      text("algo que amerite un cambio, pero es dificil", 300, 75);
      text("entender cómo es que la muerte de alguien", 300, 100);
      text("puede cambiar el rumbo de una persona para", 300, 125);
      text("siempre. Saben que la muerte es natural, pero", 300, 150);
      text("les impacta en demasía sin importar ese hecho.", 300, 175);
      text("No es algo negativo, es algo que es entendible", 300, 200);
      text("no controlar, y nuestro personaje logró salir de", 300, 225);
      text("ese abismo que lo quería tragar. Pensó para él", 300, 250);
      text("mismo que no puede enfrentarse a la muerte, así", 300, 275);
      text("que sólo la aceptó, pero si algo arendió de ella", 300, 300);
      text("es lo que tomó de su entorno. Era una persona", 300, 325);
      text("violenta, pero a partir de la muerte de su madre", 300, 350);
      text("cambió para siempre, decidió no relacionarse más", 300, 375);
      text("en disputas inútiles y por primera vez pensó en", 300, 400);
      text("su futuro, en qué haría a partir de ahora con las", 300, 425);
      text("cenizas que quedaron de su territorio, cenizas de Magog.", 300, 450);
      break;

    case 5:
      background(0);
      fill(124);
      textSize(50);
      textMode(CENTER);
      text("Yo no hice este juego", 300, 300);
      break;
    }
     if (mousePressed)
      if (mouseX>80 && mouseX < 525 && mouseY>542 && mouseY < 590)
        p=0;
    if (mouseX>80 && mouseX < 525 && mouseY>542 && mouseY < 590)
      fill(random(255)); 
    else
      fill(255,0,0);
    textMode(CENTER);
    textSize(50);
    textAlign(CENTER);
    text("Regresar a la vida", 300, 580);
  }
  //Elección de personajes-------------------------------------------------------------------------------------------
  void identificador() {

    if (mousePressed)
      col = get(mouseX, mouseY);

    if (red(col) == 255 || red(col) == 235)
      fire = 1;

    if (red(col) == 1 || green(col) == 254)
      fire = 2;

    if (red(col) == 234 || red(col) == 254)
      fire = 3;

    if (red(col) == 125 || red(col) == 253)
      fire = 4;

    if (red(col) == 50 || red(col) == 2)
      fire = 5;
  }
  //Traslación--------------------------------------------------------------------------------------------------------
  void Nacer() {
    switch(fire)
    {
    case 1:
      push();
      translate(302, 100);
      per.C1();
      pop();
      break;

    case 2:
      push();
      translate(200, 100);
      per.C2();
      pop();
      break;

    case 3:
      push();
      translate(100, 100);
      per.C3();
      pop();
      break;

    case 4:
      push();
      translate(0, 100);
      per.C4();
      pop();
      break;

    case 5:
      push();
      translate(150, -60);
      per.C5();
      pop();
      break;
    }
    push();
    translate(-148, -250);
    per.C6();
    pop();
  }
  //Turnos--------------------------------------------------------------------------------------------------------------------------
  void Turno() {
    //Indicador de turno
    if (turno==1) {
      fill(random(255), random(255), random(255));
      noStroke();
      triangle(425, 125, 450, 175, 475, 125);
    }

    //Texto atacar jugador 1
    if (turno==1) {
      if (mouseX>370 && mouseX < 527 && mouseY>502 && mouseY < 540)
        fill(random(255), 0, 0);
      else
        fill(0);
      textSize(50);
      text("Atacar", 450, 540);
    }

    //Texto atacar Aleph
    if (turno==2) {
      if (mouseX>70 && mouseX < 227 && mouseY>502 && mouseY < 540) 
        fill(random(255)); 
      else
        fill(0);
      textSize(50);
      text("Atacar", 150, 540);
    }

    //Barra vida jugador 1
    {
      fill(random(200,255),0,0);
      noStroke();
      rectMode(CENTER);
      rect(300, 425, vida1, 20);
    }

    //Barra vida Aleph
    {
      fill(255);
      noStroke();
      rectMode(CENTER);
      rect(300, 50, vida2, 20);
    }

    //Indicador de turno 2
    if (turno == 2) {
      fill(random(255));
      noStroke();
      triangle(125, 125, 150, 175, 175, 125);
    }

    //Batalla y vida por turno
    if (mousePressed)
    {
      if (turno == 1) {
        if ((mouseX>370 && mouseX < 527 && mouseY>502 && mouseY < 540))
        {
          vida2 = vida2 - round(random(12, 50));
          turno = 2;
        }
      }

      if (turno == 2) {
        if ((mouseX>70 && mouseX < 227 && mouseY>502 && mouseY < 540))
        {
          vida1 = vida1 - round(random(30, 55));
          turno = 1;
        }
      }
    }
  }
}
