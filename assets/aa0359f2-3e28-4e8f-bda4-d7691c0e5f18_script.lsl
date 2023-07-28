//Tocando Áudio no SL.
default
{
    touch_start(integer total_number)
    {

        llSay(0, "Sala de aula: Assista conteúdos de aulas assícronas e resolva simulados e provas.");
        llSetSoundQueueing(1); // Habilita a fila de som
        llPlaySound("b29cd0b4-30bb-46b8-ba5e-e9e67ef55b16", 1.0);

    }
}