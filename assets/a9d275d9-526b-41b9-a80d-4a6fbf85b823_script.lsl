default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "(UFMG - 2019)A tabela periódica apresenta informações sobre os elementos químicos. O elemento cujos átomos possuem 15 prótons, 16 nêutrons e 15 elétrons é :\nAlternativas:  \n1)  Enxofre\n2)  Fósforo\n3) Gálio\n4) Zinco", ["1", "2", "3", "4"], 7);
        llListen(7, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 7)
        {
            integer escolha = (integer)message;
            if (escolha == 2)
            {
                llDialog(id, "Certa a resposta!", ["OK"], -1);
            }
            else
            {
                llDialog(id, "Resposta escolhida: " + escolha + "\n ERROU!!!", ["OK"], -1);
            }
        }
    }
} 