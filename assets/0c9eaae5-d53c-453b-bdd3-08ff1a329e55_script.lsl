default
{
    state_entry()
    {
        llSensorRepeat("", NULL_KEY, AGENT, 1000, PI, 1.0);
      //  llSensorRepeat("", NULL_KEY, AGENT, g_Range, g_Arc, g_Rate);
         //detecta avatares em um raio de 100 metros e ângulo de 180 graus
        llSetTimerEvent(1); //executa o script a cada 1 segundo
    }

    sensor( integer total_number )
    {
        llLoopSound("36ad1603-c4c9-4128-b32a-9addea402cc8", 1.0); //som de tema
    }

    timer()
    {
        llSensorRepeat("", NULL_KEY, AGENT, 1000, PI, 1.0);
      //  llSensorRepeat("", NULL_KEY, AGENT, g_Range, g_Arc, g_Rate);//detecta avatares em um raio de 1000 metros e ângulo de 180 graus
    }
} 