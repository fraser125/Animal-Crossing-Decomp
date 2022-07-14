s32 lbl_803FCC34(struct resetCode * arg0) {
    s32 var_r4;

    var_r4 = 1;
    if ((arg0->unk2348 & 0x400) != 0) {
        arg0->unk10F4 = 0U;
    }
    if ((u32) arg0->unk10F4 != 0U) {
        var_r4 = 0;
    }
    return var_r4;
}
