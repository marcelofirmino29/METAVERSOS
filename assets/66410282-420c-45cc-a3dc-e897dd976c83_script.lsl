vector axis = <0,0,2>;
float spinrate = 0.1;
float gain = 0.5; 
//float te = 10.0;
default {
    state_entry() {
        llTargetOmega(axis, spinrate, gain);
    }
    on_rez(integer param) {
        llTargetOmega(axis, spinrate, gain);


    }
} 