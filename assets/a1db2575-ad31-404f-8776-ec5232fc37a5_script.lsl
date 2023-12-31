//Criando Estados.
default
{
    state_entry()
    {
        llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
        llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
        llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,0.0]);
        llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
        llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
        llSetText("ISÓTOPOS",<0.0, 1.0, 0.0>, 1.0);
        llSay(0,"Isótopos são variantes do mesmo elemento que diferem no número de nêutrons no núcleo. 99,985% do hidrogênio natural é encontrado nesta forma (PRÓTIO");
        llPlaySound("a5de10cd-9e40-44f0-9846-4cd73945bcd1", 1.0);
     //   llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES, <0.0, 0.0, 1.0>,1.0]);
    }

    touch_start(integer x)
    {
        state segundo;
    }
}
state segundo
{
    state_entry()
    {
        llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
        llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
        llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]);
        llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,0.0]);
        llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
        llSetText("DEUTÉRIO",<1.0, 1.0, 0.0>, 1.0);
        llSay(0,"DEUTERIO tem as mesmas características químicas que o hidrogênio, mas diferentes características físicas");
        llPlaySound("c35533dd-815f-41ab-93e9-1d3d27503077", 1.0);
    }
    touch_start(integer x)
    {
        state terceiro;
    }
}
state terceiro
{
    state_entry()
    {
        llSetLinkPrimitiveParamsFast(1,[PRIM_COLOR, ALL_SIDES,<1.0, 0.0, 0.0>,1.0]);
        llSetLinkPrimitiveParamsFast(2,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
        llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 1.0>,1.0]);
        llSetLinkPrimitiveParamsFast(4,[PRIM_COLOR, ALL_SIDES,<0.0, 0.0, 1.0>,1.0]);
        llSetLinkPrimitiveParamsFast(5,[PRIM_COLOR, ALL_SIDES,<0.0, 1.0, 0.0>,1.0]);
        llSetText("TRÍTIUM",<1.0, 1.0, 1.0>, 1.0);
        llSay(0,"TRÍTIO tem 2 néutrons e é fracamente radioativo; Informalmente é simbolizado pela letra T. Emite radiação do tipo β.");
        llPlaySound("89636aff-1bdd-4fa1-b259-37d466d8f63a", 1.0);
   //     llSetLinkPrimitiveParamsFast(3,[PRIM_COLOR, ALL_SIDES, <1.0, 1.0, 1.0>,1.0]);
}

    touch_start(integer x)
    {
      state default;
    }
} 