default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "(Ufac) Um elétron localiza-se na camada “2” e subnível “p” quando apresenta os seguintes valores de números quânticos: \n1)  n = 4 e ℓ= 0\n2)  n = 2 e ℓ= 0\n3) n = 2 e ℓ= 1\n4) n = 3 e ℓ= 1", ["1", "2", "3", "4"], 4);
        llListen(4, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 4)
        {
            integer escolha = (integer)message;
            if (escolha == 3)
            {
                llDialog(id, "Certa a resposta!", ["OK"], -1);
            }
            else
            {
                llDialog(id, "Resposta escolhida " + escolha + " \nERROU!!!", ["OK"], -1);
            }
        }
    }
} 