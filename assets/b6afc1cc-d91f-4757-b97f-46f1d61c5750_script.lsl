//Tocando Áudio no SL.
default
{
    touch_start(integer total_number)
    {
        llSay(0, "Palestras e reuniões, assista uma aula do seu professor em tempo real.");
        llSetSoundQueueing(1); // Habilita a fila de som
        llPlaySound("be4be952-8ae3-4233-986b-8e22c3a6c768", 1.0);

    }
}
