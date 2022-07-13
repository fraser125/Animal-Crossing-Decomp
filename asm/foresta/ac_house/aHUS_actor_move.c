void lbl_805B075C(struct actor_move * arg0, s32 arg1) {
    aHUS_set_doorSE();
    arg0->unk2A0(arg0, arg1);
    aHUS_ctrl_light(arg0);
    chase_f(arg0 + 0x2CC, &lit_738, lit_738);
}
