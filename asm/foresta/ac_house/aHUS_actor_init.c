// 29% Matching
void lbl_805B07C0(struct house* arg0, s32 arg1) {
    s32 sp10;
    s32 spC;
    s32 sp8;
    s16 temp_r6;

    temp_r6 = arg0->unk6 + 0xA005;
    sp8 = arg0->unkC;
    spC = arg0->unk10;
    sp10 = arg0->unk14;
    mFI_SetFG_common(temp_r6, &sp8, 0, temp_r6);
    aHUS_actor_move(arg0, arg1);
    arg0->unk164 = aHUS_actor_move;
}
