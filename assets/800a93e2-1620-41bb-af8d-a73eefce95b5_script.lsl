default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "(SELECON 2021)  A tinta refletiva para sinalização é um produto recomendado para espaços como rodovias, estradas, estacionamentos e para demais espaços onde são necessárias sinalizações para o trânsito. Esse produto permite visualização diurna e noturna. Essas tintas são conhecidas como tintas fosforescentes. O modelo atômico que melhor explica o fenômeno acima é o de: \nAlternativas  \n1)  Thomsom\n2) Helsenberg\n3) Rutherford\n4) Bohr", ["1", "2", "3", "4"], 6);
        llListen(6, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 6)
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