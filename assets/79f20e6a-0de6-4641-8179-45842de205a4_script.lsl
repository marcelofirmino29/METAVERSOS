default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "(CONSULPLAN - 2021) Um ânion cloreto (Cl–) tem 17 prótons e 18 nêutrons e um cátion sódio (Na+) tem 11 prótons e 12 nêutrons. Quantos elétrons terão o Cl– e o Na+ , respectivamente?\nAlternativas  \n1)  16 e 12\n2)  17 e 11\n3) 19 e 11\n4) 18 e 10", ["1", "2", "3", "4"], 3);
        llListen(3, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 3)
        {
            integer escolha = (integer)message;
            if (escolha == 4)
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