default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "(UFSC - 2022) Sobre a poluição por substâncias nitrogenadas, assinale a alternativa correta. \nAlternativas  \n1)  A amônia se torna mais tóxica aos organismos aquáticos quando o pH da água é elevado, pois a forma predominante passa a ser o NH\n2)  O processo de desnitrificação nesse corpo d’água é prejudicado pela baixa concentração de oxigênio, sendo o O2 essencial para as bactérias que realizam essa transformação.", ["1", "2"], 9);
        llListen(9, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 9)
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