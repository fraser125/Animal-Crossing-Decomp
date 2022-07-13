void lbl_805B067C(struct open_door * arg0, struct arg_door * arg1) {
    s32 var_r31;
    s32 temp_r0;

    if (cKF_SkeletonInfo_R_play((u32)arg0 + 0x178) == 1) {
        temp_r0 = arg0->unk2B0;
        if (temp_r0 != 3) {
            if (temp_r0 < 3) {
                if (temp_r0 < 1) {
                    goto block_7;
                }
                var_r31 = 0;
                arg0->unk20 = (s32) data_806C5240.unk4;
            } else {
block_7:
                var_r31 = 0;
            }
        } else {
            aHUS_rewrite_out_data(arg0, arg1);
            goto_other_scene(arg1, &aHUS_npc_house_door_data, 0);
            arg1->unk20D0 = 9;
            var_r31 = 3;
            mDemo_End(arg0);
        }
        arg0->unk2B0 = 0;
        aHUS_setup_action(arg0, var_r31);
    }
}
