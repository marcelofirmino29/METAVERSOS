//estrutura de Marcus73 Core. Modificado por MetaFirma
//llSetAlpha(1.0, ALL_SIDES); // set entire prim 100% visible.
//llSetColor(<0.0, 1.0, 0.0>,ALL_SIDES);
//llSetLinkPrimitiveParamsFast(1,[PRIM_TYPE, PRIM_TYPE_BOX, 0, <0.0, 1.0, 0.0>, 0.0, <0.0, 0.0, 0.0>, <0.0, 1.0, 0.0>, <0.35, 0.0, 0.0>, PRIM_SIZE, <3, 0.3, 1.5>, PRIM_COLOR, ALL_SIDES,<0.6, 0.0, 0.0>,1.0]);
default
{
    state_entry()
    {
       
llSetText("NIVEIS ATOMICOS\nAtomic levels",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,0.0]);   
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
    }

    touch_start(integer total_number)
    {
        state state1;
    }
}

state state1
{
    state_entry()
    {
llSetText("H \natomic number = 1",<0.0,1.0,1.0>,1);
llSay(0, "Este é um átomo de hidrogênio. Possui 1 próton no núcleo e 1 elétron no primeiro
nível");
llPlaySound("cc86291b-b723-4b4c-ad31-39776696e579", 1.0);
//llSay(0, "This is an Hydrogen atom. It has 1 proton in the //nucleus and 1 electron on the first 
//level");
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
        llSetText("He \natomic number = 2",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,0.0]);   
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "
Este é um átomo de hélio. Possui 2 prótons no núcleo e 2 elétrons no primeiro nível que está completo. Portanto, não precisa formar vínculos");
llPlaySound("de572a25-fbec-4818-b197-ca83371d0e30", 1.0);

//llSay(0, "This is an Helium atom, It has 2 protons in the //nucleus and 2 electrons on the first 
//level, so it is complete. Helium no needs to form bonds");

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
llSetText("Li \natomic number = 3",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "Este é um átomo de lítio. Possui 3 prótons no núcleo, 2 elétrons no primeiro nível e
1 no segundo nível. ele tende a desistir desse elétron e formar ligações iônicas");
llPlaySound("21163a49-5b00-47bf-b740-2cea4db22961", 1.0);
//llSay(0, "This is a Lithium atom, It has 2 protons in the //nucleus, 2 electrons in the first 
//level and 1 in the second level. It tends to give away the //outest electron to form a ionic 
//bond");

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

llSetText("Be \natomic number = 4",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]);   
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "Este é um átomo de berílio. Tem 4 prótons no núcleo, 2 elétrons no primeiro
nível e 2 no segundo nível para formar ligações iônicas");
llPlaySound("13a90803-609b-42d8-ba1a-274d2b2579fa", 1.0);
//llSay(0, "This is a Berillium atom, It has 2 protons in //the nucleus, 2 electrons in the first 
//level and 2 in the second level. It tends to form a ionic //bond");



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

llSetText("B \natomic number = 5",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "Este é um átomo de boro. Possui 5 prótons no núcleo e 3 elétrons no nível positivo
externo");
llPlaySound("7dcdfc9b-d89f-4ebe-8b62-29f88078c0f5", 1.0);
//llSay(0, "This is a Boron atom, It has 5 protons in the //nucleus and 3 electrons in the outest 
//level");

    
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

llSetText("C \natomic number = 6",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "
Este é um átomo de carbono. Possui 6 prótons no núcleo e 4 elétrons no nível
mais externo. É a base química da vida");
llPlaySound("42ba44b0-f635-47bf-9823-18963d40aa1c", 1.0);
//llSay(0, "This is a Carbon atom, It has 6 protons in the //nucleus and 4 electrons in the outest 
//level. It is basic element for life");
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

llSetText("N \natomic number = 7",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "
Este é um átomo de nitrogênio. Possui 7 prótons no núcleo e 5 elétrons no nível
mais externo.");
llPlaySound("5862ac4f-f085-452f-9d69-d90bbaf5c709", 1.0);
//llSay(0, "This is a Nitrogen atom, It has 7 protons in the //nucleus and 5 electrons in the outest 
//level.");
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

llSetText("O \natomic number = 8",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "Este é um átomo de oxigênio. Possui 8 prótons no núcleo e 6 elétrons no nível
mais externo. Ele tende a atrair os elétrons da ligação para si");
llPlaySound("54ced0c1-445f-4a32-adcb-e20f3146e43b", 1.0);
//llSay(0, "This is an Oxygen atom, It has 8 protons in the //nucleus and 6 electrons in the outest 
//level. It tends to attract the bound electrons");
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

llSetText("F \natomic number = 9",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
llSay(0, "Este é um átomo de flúor. Possui 9 prótons no núcleo e 7 elétrons no nível
mais externo. Tende a formar ligações iônicas");
llPlaySound("37628887-1719-4d8a-a5a8-12377c2076dc", 1.0);
//llSay(0, "This is a Fluorine atom, It has 9 protons in the //nucleus and 7 electrons in the outest 
//level. It tends to form ionic bonds");
    }
    
    touch_start(integer total_number)
    {
        state state10;
    }
}

state state10
{
    state_entry()
    {

llSetText("Ne \natomic number = 10",<0.0,1.0,1.0>,1);
llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);   
llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]); 
llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]); 
llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(6,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(7,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(8,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(9,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);    
llSetLinkPrimitiveParamsFast(10,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);  
llSetLinkPrimitiveParamsFast(11,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(12,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSetLinkPrimitiveParamsFast(13,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
llSay(0, "Este é um átomo de néon. Possui 10 prótons no núcleo e 8 elétrons no nível
mais externo. Tem o octeto completo e não forma ligações");
llPlaySound("6252ca0b-e301-48bb-a760-ee77481851ed", 1.0);
//llSay(0, "This is a Neon atom, It has 10 protons in the //nucleus and 8 electrons in the outest 
//level (complete level). It doesn't form bonds");
    }
    
    
touch_start(integer total_number)
    
    {
        llResetScript();
    }
}
 