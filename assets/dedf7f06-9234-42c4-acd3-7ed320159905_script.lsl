default
{
    state_entry()
    {
        llWhisper(0, "FOTOSSÍNTESE");
    }
    
    touch_start (integer total_number)
    {
        llWhisper(0,"O gás carbônico polui o ar e provoca o aumento da temperatura ambiente. As árvores, assim como as outras plantas, no processo chamado fotossíntese, absorvem o gás carbônico do ar e libera o oxigênio.");
        llPlaySound("d0fc431d-116f-44bc-b342-7476014a5a0a", 1.0);
    }
} 