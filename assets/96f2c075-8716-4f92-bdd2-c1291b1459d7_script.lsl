default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "Sobre a energia eólica, assinale a alternativa correta:\nAlternativas  \n1)  É a energia gerada de gás Hélio, um elemento químico muito presente na atmosfera, que é armazenado e, com uma reação exotérmica, gera energia que é convertida em eletricidade.\n2)  É a energia gerada dos ventos, geralmente utilizando moinhos, que, mecanicamente, se movimentam gerando energia elétrica.", ["1", "2"], 8);
        llListen(8, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 8)
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