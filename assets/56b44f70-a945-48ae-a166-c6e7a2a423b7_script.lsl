default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, " (UFSM - 2021) Entre os anos de 1911 e 1913, cientistas haviam percebido a existência de átomos com o mesmo número atômico, porém, com números de massa diferentes. Na natureza, existem três isótopos naturais de hidrogênio (1H, 2D, 3T) e três isótopos naturais de oxigênio (16O, 17O, 18O). Podemos concluir que da combinação desses isótopos, o número de tipos diferentes de moléculas de água é:  \nAlternativas  \n1)  18\n2)  9\n3) 15\n4) 6", ["1", "2", "3", "4"], 5);
        llListen(5, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 5)
        {
            integer escolha = (integer)message;
            if (escolha == 1)
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