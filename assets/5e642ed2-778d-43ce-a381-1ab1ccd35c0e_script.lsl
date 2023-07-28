default
{

    touch_start(integer total_number)
    {
        state state1;
    }
}

state state1
{
    state_entry()
    {

//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "O Diagrama de Pauling, também conhecido como Diagrama de Aufbaum, é a representação da distribuição eletrônica através de subníveis de energia.");
llPlaySound("b0a288fe-c5cb-4d89-9f37-88750eef18b1", 1.0);

//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
//llSay(0, "De acordo com o modelo proposto por Pauling, a eletrosfera está dividida em 7 camadas eletrônicas (K, L, M, N, O, P e Q) ao redor do núcleo atômico, sendo que cada uma delas permite um número máximo de elétrons, que são 2, 8, 18, 32, 32,18 e 8, respectivamente.");

//nivel p
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);


//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);


}

    touch_start(integer total_number)
    {
        state state2;
    }
}

state state2
{
    state_entry()
    {
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);

//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);

llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "De acordo com o modelo proposto por Pauling, a eletrosfera está dividida em 7 camadas eletrônicas (K, L, M, N, O, P e Q) ao redor do núcleo atômico, sendo que cada uma delas permite um número máximo de elétrons, que são 2, 8, 18, 32, 32,18 e 8, respectivamente. A camada K tem apenas um subnível (s)");
llPlaySound("a75fe7b8-fc75-4718-b1fe-a6fe9dd22909", 1.0);

//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
 //aceso
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//aceso
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);


//nivel p
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);

llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);

//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);

  }

    touch_start(integer total_number)
    {
        state state3;
    }
}

state state3
{
    state_entry()
    {
llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);

llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "A camada L tem dois subníveis (s e p).");
llPlaySound("7cdfabbd-7ef6-493f-88ce-a55ea050d004", 1.0);


//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
 //ACESO
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);

//nivel p
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);

llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);

//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);

 }

    touch_start(integer total_number)
    {
        state state4;
    }
}

state state4
{
    state_entry()
    {

llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);

llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "A camada m tem três subníveis (s, p e d).");
llPlaySound("be03bd83-567e-4695-a78d-fdf178694b7a", 1.0);


//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);

//nivel p
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//

//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);

    }
    touch_start(integer total_number)
    {
        state state5;
    }
}

state state5
{
    state_entry()
    {

llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);


llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "a camada N tem quatro subníveis (s, p, d e f).");
llPlaySound("5aae21e6-6c0e-4ade-a078-3b44e9992e85", 1.0);

//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
 //
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//

//nivel p
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//

//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);

}
    touch_start(integer total_number)
    {
        state state6;
    }
}

state state6
{
    state_entry()
    {

llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);

llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "a camada O tem quatro subníveis (s, p, d e f).");
llPlaySound("ee39d39d-d1d6-4cb3-ac47-c42fc8dc77a1", 1.0);



//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
 //
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);

//nivel p
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//

//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);

    }
touch_start(integer total_number)
    {
        state state7;
    }
}

state state7
{
    state_entry()
    {

llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);

llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "a camada P tem três subníveis (s, p, e d).");
llPlaySound("63b5e697-9e4f-46d3-82a5-97d3d32177d6", 1.0);

//nivel s
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//ACESO
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
 //
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);

//nivel p
//ACESO
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//

//nivel d
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
//

//nivel f
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
    }

    touch_start(integer total_number)
    {
        state state8;
    }
}

state state8
{
    state_entry()
    {

llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);

llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "a camada Q tem dois subníveis (s e p e é a última).");
llPlaySound("abfd2bb7-59a9-4266-8fd8-30714da9de97", 1.0);

//nivel s
//ACESO
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
 //
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);

//nivel p
//ACESO
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//

//nivel d
//ACESO
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,0.0]);
//ACESO
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
//

//nivel f
////ACESO
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
    }

    touch_start(integer total_number)
    {
        state state9;
    }
}

state state9
{
    state_entry()
    {

llSetText("Camadas",<0.0,1.0,1.0>,0.0);
//fundo
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,0.0]);
//camadas
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.8, 0.6, 0.1>,1.0]);
llSetText("DIAGRAMA DE PAULING",<0.0,1.0,1.0>,1);
llSay(0, "Repare que a soma dos elétrons comportados em cada subnível por camada eletrônica resulta no número máximo de elétrons em cada uma das 7 camadas.") ;
llPlaySound("a76658dd-5954-48fb-8038-fb9ce1ba1a8d", 1.0);

//nivel s
//ACESO
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(14,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
 //
llSetLinkPrimitiveParamsFast(26,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
//
llSetLinkPrimitiveParamsFast(27,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);

//nivel p
//ACESO
llSetLinkPrimitiveParamsFast(15,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(16,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(17,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(18,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(25,[PRIM_COLOR, ALL_SIDES,<1.0, 1.0, 0.0>,1.0]);
//

//nivel d
//ACESO
llSetLinkPrimitiveParamsFast(19,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(20,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(21,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
llSetLinkPrimitiveParamsFast(22,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
//

//nivel f
////ACESO
llSetLinkPrimitiveParamsFast(23,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(24,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
//
    }

touch_start(integer total_number)

    {
        llResetScript();
    }
}