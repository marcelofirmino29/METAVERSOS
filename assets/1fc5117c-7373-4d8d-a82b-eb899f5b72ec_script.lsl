default
{
    state_entry()
    {
        llWhisper(0, "EVAPORAÇÃO");
    }
    
    touch_start (integer total_number)
    {
        llWhisper(0,"A Evaporação consiste em um fenômeno em que átomos de substâncias em estado líquido obtêm energia suficiente para passar para o estado gasoso.");
        llPlaySound("29caa2c0-f5b9-412e-b913-6bd1b223998c", 1.0);
    }
} 