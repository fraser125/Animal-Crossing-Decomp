lbl_8053A26C:
/* 8053A26C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8053A270  7C 08 02 A6 */	mflr r0
/* 8053A274  90 01 00 54 */	stw r0, 0x54(r1)
/* 8053A278  39 61 00 50 */	addi r11, r1, 0x50
/* 8053A27C  4B B6 0C 41 */	bl func_8009AEBC
/* 8053A280  3C A0 81 1D */	lis r5, data_811D3978@ha /* 0x811D3978@ha */
/* 8053A284  7C 9E 23 78 */	mr r30, r4
/* 8053A288  90 65 39 78 */	stw r3, data_811D3978@l(r5)  /* 0x811D3978@l */
/* 8053A28C  38 7E 01 10 */	addi r3, r30, 0x110
/* 8053A290  4B FF 23 89 */	bl aNPC_keep_cloth_data_area
/* 8053A294  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053A298  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053A29C  3F E3 00 02 */	addis r31, r3, 2
/* 8053A2A0  80 1F 60 4C */	lwz r0, 0x604c(r31)
/* 8053A2A4  28 00 00 00 */	cmplwi r0, 0
/* 8053A2A8  40 82 01 EC */	bne lbl_8053A494
/* 8053A2AC  3C 60 81 1F */	lis r3, aNPC_clip@ha /* 0x811EBC00@ha */
/* 8053A2B0  38 80 01 2C */	li r4, 0x12c
/* 8053A2B4  38 63 BC 00 */	addi r3, r3, aNPC_clip@l /* 0x811EBC00@l */
/* 8053A2B8  90 7F 60 4C */	stw r3, 0x604c(r31)
/* 8053A2BC  4B B2 2D AD */	bl bzero
/* 8053A2C0  3C 80 80 54 */	lis r4, aNPC_setupActor_proc@ha /* 0x80539A5C@ha */
/* 8053A2C4  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A2C8  38 04 9A 5C */	addi r0, r4, aNPC_setupActor_proc@l /* 0x80539A5C@l */
/* 8053A2CC  3C 80 80 54 */	lis r4, aNPC_get_overlay_area_proc@ha /* 0x80539CFC@ha */
/* 8053A2D0  90 03 00 00 */	stw r0, 0(r3)
/* 8053A2D4  3D 20 80 54 */	lis r9, aNPC_free_overlay_area_proc@ha /* 0x80539F18@ha */
/* 8053A2D8  3D 00 80 54 */	lis r8, aNPC_get_actor_area_proc@ha /* 0x80539FE8@ha */
/* 8053A2DC  3C C0 80 54 */	lis r6, aNPC_free_actor_area_proc@ha /* 0x8053A054@ha */
/* 8053A2E0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A2E4  38 04 9C FC */	addi r0, r4, aNPC_get_overlay_area_proc@l /* 0x80539CFC@l */
/* 8053A2E8  3E E0 80 54 */	lis r23, aNPC_dma_draw_data_proc@ha /* 0x8053A09C@ha */
/* 8053A2EC  3C A0 80 54 */	lis r5, aNPC_set_attention_request_proc@ha /* 0x80539664@ha */
/* 8053A2F0  90 03 00 04 */	stw r0, 4(r3)
/* 8053A2F4  3C 80 80 54 */	lis r4, func_80539530@ha /* 0x80539530@ha */
/* 8053A2F8  3C 60 80 54 */	lis r3, aNPC_actor_ct@ha /* 0x80538CAC@ha */
/* 8053A2FC  3F 20 80 54 */	lis r25, aNPC_actor_dt@ha /* 0x80539218@ha */
/* 8053A300  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8053A304  38 09 9F 18 */	addi r0, r9, aNPC_free_overlay_area_proc@l /* 0x80539F18@l */
/* 8053A308  3F 40 80 54 */	lis r26, aNPC_actor_save@ha /* 0x805394AC@ha */
/* 8053A30C  3F 60 80 54 */	lis r27, aNPC_actor_init@ha /* 0x80538A3C@ha */
/* 8053A310  90 07 00 08 */	stw r0, 8(r7)
/* 8053A314  3F 80 80 53 */	lis r28, aNPC_actor_move@ha /* 0x8052FFA8@ha */
/* 8053A318  3F A0 80 53 */	lis r29, aNPC_actor_move_show_before@ha /* 0x8052FE10@ha */
/* 8053A31C  3D 80 80 53 */	lis r12, aNPC_actor_move_show_after@ha /* 0x8052FE70@ha */
/* 8053A320  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8053A324  38 08 9F E8 */	addi r0, r8, aNPC_get_actor_area_proc@l /* 0x80539FE8@l */
/* 8053A328  3D 60 80 53 */	lis r11, aNPC_actor_draw@ha /* 0x805307D4@ha */
/* 8053A32C  3D 40 80 54 */	lis r10, aNPC_rebuild_dma@ha /* 0x80539644@ha */
/* 8053A330  90 07 00 0C */	stw r0, 0xc(r7)
/* 8053A334  3D 20 80 53 */	lis r9, aNPC_set_request_act@ha /* 0x805315FC@ha */
/* 8053A338  3D 00 80 53 */	lis r8, aNPC_set_head_request@ha /* 0x8052E224@ha */
/* 8053A33C  3C E0 80 53 */	lis r7, aNPC_talk_demo_proc@ha /* 0x80533134@ha */
/* 8053A340  83 1F 60 4C */	lwz r24, 0x604c(r31)
/* 8053A344  38 06 A0 54 */	addi r0, r6, aNPC_free_actor_area_proc@l /* 0x8053A054@l */
/* 8053A348  3C C0 80 53 */	lis r6, aNPC_Animation_init@ha /* 0x8052CA10@ha */
/* 8053A34C  3A F7 A0 9C */	addi r23, r23, aNPC_dma_draw_data_proc@l /* 0x8053A09C@l */
/* 8053A350  90 18 00 10 */	stw r0, 0x10(r24)
/* 8053A354  38 A5 96 64 */	addi r5, r5, aNPC_set_attention_request_proc@l /* 0x80539664@l */
/* 8053A358  38 84 95 30 */	addi r4, r4, func_80539530@l /* 0x80539530@l */
/* 8053A35C  38 63 8C AC */	addi r3, r3, aNPC_actor_ct@l /* 0x80538CAC@l */
/* 8053A360  83 1F 60 4C */	lwz r24, 0x604c(r31)
/* 8053A364  38 19 92 18 */	addi r0, r25, aNPC_actor_dt@l /* 0x80539218@l */
/* 8053A368  3B 5A 94 AC */	addi r26, r26, aNPC_actor_save@l /* 0x805394AC@l */
/* 8053A36C  3B 7B 8A 3C */	addi r27, r27, aNPC_actor_init@l /* 0x80538A3C@l */
/* 8053A370  92 F8 00 14 */	stw r23, 0x14(r24)
/* 8053A374  3B 9C FF A8 */	addi r28, r28, aNPC_actor_move@l /* 0x8052FFA8@l */
/* 8053A378  3B BD FE 10 */	addi r29, r29, aNPC_actor_move_show_before@l /* 0x8052FE10@l */
/* 8053A37C  39 8C FE 70 */	addi r12, r12, aNPC_actor_move_show_after@l /* 0x8052FE70@l */
/* 8053A380  83 3F 60 4C */	lwz r25, 0x604c(r31)
/* 8053A384  39 6B 07 D4 */	addi r11, r11, aNPC_actor_draw@l /* 0x805307D4@l */
/* 8053A388  39 4A 96 44 */	addi r10, r10, aNPC_rebuild_dma@l /* 0x80539644@l */
/* 8053A38C  39 29 15 FC */	addi r9, r9, aNPC_set_request_act@l /* 0x805315FC@l */
/* 8053A390  90 B9 00 18 */	stw r5, 0x18(r25)
/* 8053A394  39 08 E2 24 */	addi r8, r8, aNPC_set_head_request@l /* 0x8052E224@l */
/* 8053A398  38 E7 31 34 */	addi r7, r7, aNPC_talk_demo_proc@l /* 0x80533134@l */
/* 8053A39C  38 A6 CA 10 */	addi r5, r6, aNPC_Animation_init@l /* 0x8052CA10@l */
/* 8053A3A0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8053A3A4  90 86 00 CC */	stw r4, 0xcc(r6)
/* 8053A3A8  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8053A3AC  90 64 00 D0 */	stw r3, 0xd0(r4)
/* 8053A3B0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3B4  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 8053A3B8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3BC  93 43 00 D8 */	stw r26, 0xd8(r3)
/* 8053A3C0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3C4  93 63 00 DC */	stw r27, 0xdc(r3)
/* 8053A3C8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3CC  93 83 00 E0 */	stw r28, 0xe0(r3)
/* 8053A3D0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3D4  93 A3 00 E4 */	stw r29, 0xe4(r3)
/* 8053A3D8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3DC  91 83 00 E8 */	stw r12, 0xe8(r3)
/* 8053A3E0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3E4  91 63 00 F4 */	stw r11, 0xf4(r3)
/* 8053A3E8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3EC  91 43 00 F8 */	stw r10, 0xf8(r3)
/* 8053A3F0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3F4  91 23 01 08 */	stw r9, 0x108(r3)
/* 8053A3F8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A3FC  91 03 01 0C */	stw r8, 0x10c(r3)
/* 8053A400  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A404  90 E3 01 10 */	stw r7, 0x110(r3)
/* 8053A408  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A40C  90 A3 01 14 */	stw r5, 0x114(r3)
/* 8053A410  3C 80 80 54 */	lis r4, aNPC_chg_schedule@ha /* 0x805380C4@ha */
/* 8053A414  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A418  38 04 80 C4 */	addi r0, r4, aNPC_chg_schedule@l /* 0x805380C4@l */
/* 8053A41C  3C E0 80 53 */	lis r7, aNPC_set_dst_pos@ha /* 0x8052F858@ha */
/* 8053A420  90 03 01 18 */	stw r0, 0x118(r3)
/* 8053A424  3C A0 80 53 */	lis r5, aNPC_think_proc@ha /* 0x805368D4@ha */
/* 8053A428  3C 80 80 53 */	lis r4, func_8052E298@ha /* 0x8052E298@ha */
/* 8053A42C  3C 60 80 54 */	lis r3, aNPC_set_start_pos@ha /* 0x80538BC8@ha */
/* 8053A430  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8053A434  38 07 F8 58 */	addi r0, r7, aNPC_set_dst_pos@l /* 0x8052F858@l */
/* 8053A438  38 A5 68 D4 */	addi r5, r5, aNPC_think_proc@l /* 0x805368D4@l */
/* 8053A43C  38 84 E2 98 */	addi r4, r4, func_8052E298@l /* 0x8052E298@l */
/* 8053A440  90 06 01 1C */	stw r0, 0x11c(r6)
/* 8053A444  38 03 8B C8 */	addi r0, r3, aNPC_set_start_pos@l /* 0x80538BC8@l */
/* 8053A448  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A44C  90 A3 01 20 */	stw r5, 0x120(r3)
/* 8053A450  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A454  90 83 01 24 */	stw r4, 0x124(r3)
/* 8053A458  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A45C  90 03 01 28 */	stw r0, 0x128(r3)
/* 8053A460  4B FF FC 89 */	bl aNPC_keep_actor_class
/* 8053A464  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A468  38 63 00 64 */	addi r3, r3, 0x64
/* 8053A46C  4B FF FD 11 */	bl aNPC_keep_n_overlay_area
/* 8053A470  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A474  38 63 00 6C */	addi r3, r3, 0x6c
/* 8053A478  4B FF FD 21 */	bl aNPC_keep_s_overlay_area
/* 8053A47C  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A480  38 63 00 7C */	addi r3, r3, 0x7c
/* 8053A484  4B FF FD 4D */	bl aNPC_keep_k_overlay_area
/* 8053A488  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A48C  38 63 00 94 */	addi r3, r3, 0x94
/* 8053A490  4B FF FD 79 */	bl aNPC_keep_e_overlay_area
lbl_8053A494:
/* 8053A494  88 1E 00 E5 */	lbz r0, 0xe5(r30)
/* 8053A498  2C 00 00 08 */	cmpwi r0, 8
/* 8053A49C  40 82 01 60 */	bne lbl_8053A5FC
/* 8053A4A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053A4A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053A4A8  3C 63 00 02 */	addis r3, r3, 2
/* 8053A4AC  A0 03 64 E4 */	lhz r0, 0x64e4(r3)
/* 8053A4B0  3B E3 34 40 */	addi r31, r3, 0x3440
/* 8053A4B4  3B C3 64 E4 */	addi r30, r3, 0x64e4
/* 8053A4B8  28 00 00 00 */	cmplwi r0, 0
/* 8053A4BC  40 82 00 3C */	bne lbl_8053A4F8
/* 8053A4C0  7F C3 F3 78 */	mr r3, r30
/* 8053A4C4  7F E4 FB 78 */	mr r4, r31
/* 8053A4C8  38 A0 00 01 */	li r5, 1
/* 8053A4CC  38 C0 00 01 */	li r6, 1
/* 8053A4D0  4B E9 55 E9 */	bl mNpc_SetNpcList
/* 8053A4D4  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 8053A4D8  88 9F 08 9A */	lbz r4, 0x89a(r31)
/* 8053A4DC  88 7F 08 9B */	lbz r3, 0x89b(r31)
/* 8053A4E0  88 1F 08 9C */	lbz r0, 0x89c(r31)
/* 8053A4E4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8053A4E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053A4EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8053A4F0  90 01 00 08 */	stw r0, 8(r1)
/* 8053A4F4  48 00 00 BC */	b lbl_8053A5B0
lbl_8053A4F8:
/* 8053A4F8  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8053A4FC  38 61 00 14 */	addi r3, r1, 0x14
/* 8053A500  81 1E 00 14 */	lwz r8, 0x14(r30)
/* 8053A504  38 81 00 10 */	addi r4, r1, 0x10
/* 8053A508  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8053A50C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8053A510  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8053A514  38 C1 00 08 */	addi r6, r1, 8
/* 8053A518  38 E1 00 18 */	addi r7, r1, 0x18
/* 8053A51C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8053A520  90 01 00 20 */	stw r0, 0x20(r1)
/* 8053A524  4B E6 B2 9D */	bl mFI_Wpos2BkandUtNuminBlock
/* 8053A528  2C 03 00 00 */	cmpwi r3, 0
/* 8053A52C  40 82 00 28 */	bne lbl_8053A554
/* 8053A530  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 8053A534  88 9F 08 9A */	lbz r4, 0x89a(r31)
/* 8053A538  88 7F 08 9B */	lbz r3, 0x89b(r31)
/* 8053A53C  88 1F 08 9C */	lbz r0, 0x89c(r31)
/* 8053A540  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8053A544  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053A548  90 61 00 0C */	stw r3, 0xc(r1)
/* 8053A54C  90 01 00 08 */	stw r0, 8(r1)
/* 8053A550  48 00 00 60 */	b lbl_8053A5B0
lbl_8053A554:
/* 8053A554  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8053A558  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8053A55C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8053A560  80 C1 00 08 */	lwz r6, 8(r1)
/* 8053A564  4B E9 88 41 */	bl mNpc_CheckNpcSet
/* 8053A568  2C 03 00 00 */	cmpwi r3, 0
/* 8053A56C  40 82 00 44 */	bne lbl_8053A5B0
/* 8053A570  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8053A574  38 61 00 0C */	addi r3, r1, 0xc
/* 8053A578  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8053A57C  38 81 00 08 */	addi r4, r1, 8
/* 8053A580  38 E0 00 00 */	li r7, 0
/* 8053A584  4B E9 8A 31 */	bl mNpc_GetMakeUtNuminBlock_area
/* 8053A588  2C 03 00 00 */	cmpwi r3, 0
/* 8053A58C  40 82 00 24 */	bne lbl_8053A5B0
/* 8053A590  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 8053A594  88 9F 08 9A */	lbz r4, 0x89a(r31)
/* 8053A598  88 7F 08 9B */	lbz r3, 0x89b(r31)
/* 8053A59C  88 1F 08 9C */	lbz r0, 0x89c(r31)
/* 8053A5A0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8053A5A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053A5A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8053A5AC  90 01 00 08 */	stw r0, 8(r1)
lbl_8053A5B0:
/* 8053A5B0  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8053A5B4  39 00 FF F1 */	li r8, -15
/* 8053A5B8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8053A5BC  39 20 00 00 */	li r9, 0
/* 8053A5C0  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8053A5C4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8053A5C8  80 E1 00 08 */	lwz r7, 8(r1)
/* 8053A5CC  4B E6 E1 C1 */	bl mFI_RegistMoveActorList
/* 8053A5D0  2C 03 00 00 */	cmpwi r3, 0
/* 8053A5D4  41 82 00 28 */	beq lbl_8053A5FC
/* 8053A5D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053A5DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053A5E0  3C 63 00 02 */	addis r3, r3, 2
/* 8053A5E4  80 63 67 98 */	lwz r3, 0x6798(r3)
/* 8053A5E8  28 03 00 00 */	cmplwi r3, 0
/* 8053A5EC  41 82 00 08 */	beq lbl_8053A5F4
/* 8053A5F0  4B E9 CF 71 */	bl mNPS_reset_schedule_area
lbl_8053A5F4:
/* 8053A5F4  7F E3 FB 78 */	mr r3, r31
/* 8053A5F8  4B E9 CF 29 */	bl mNPS_set_island_schedule_area
lbl_8053A5FC:
/* 8053A5FC  39 61 00 50 */	addi r11, r1, 0x50
/* 8053A600  4B B6 09 09 */	bl func_8009AF08
/* 8053A604  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8053A608  7C 08 03 A6 */	mtlr r0
/* 8053A60C  38 21 00 50 */	addi r1, r1, 0x50
/* 8053A610  4E 80 00 20 */	blr 
