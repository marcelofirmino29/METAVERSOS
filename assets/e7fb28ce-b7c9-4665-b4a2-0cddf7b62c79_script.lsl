default
{
    touch_start(integer num_detected)
    {
        key avatar = llDetectedKey(0);
        llDialog(avatar, "SEGUE A MÚSICA ... \n1)  SIM\n2)  NÃO\n", ["1", "2"], 11);
        llListen(11, "", avatar, "");
    }

    listen(integer channel, string name, key id, string message)
    {
        if(channel == 11)
        {
            integer escolha = (integer)message;
            if (escolha == 1)
            {
                llDialog(id, "SEJA BEM-VINDO!!", ["OK"], -1);
            }
            else
            {
                llDialog(id, "EXPLORE O METAVERSO", ["OK"], -1);
            }
        }
    }
} 