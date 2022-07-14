s32 lbl_803FAC10(u8* arg0, u8* arg1, s32 arg2) {
    s32 var_r9;
    s32 var_r7;
    s32 var_r8;
    u8 temp_r6;
    u8* var_r3;
    u8* var_r4;

    var_r3 = arg0;
    var_r4 = arg1;
    var_r7 = 0;
    var_r8 = 0;
    var_r9 = 0;
loop_3:
    if ((var_r3 != NULL) && (var_r8 < arg2)) {
        temp_r6 = *var_r3;
        if (temp_r6 != 0) {
            if (temp_r6 == (u8) *var_r4) {
                var_r7 += 1;
                var_r3 += 1;
                var_r4 += 1;
                var_r8 += 1;
                goto loop_3;
            }
        }
    }
    if (var_r7 == arg2) {
        var_r9 = 1;
    }
    return var_r9;
}
