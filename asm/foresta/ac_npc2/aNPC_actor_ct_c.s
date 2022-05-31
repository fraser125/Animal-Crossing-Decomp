lbl_80544F4C:
/* 80544F4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80544F50  7C 08 02 A6 */	mflr r0
/* 80544F54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80544F58  39 61 00 50 */	addi r11, r1, 0x50
/* 80544F5C  4B B5 5F 61 */	bl func_8009AEBC
/* 80544F60  3C A0 81 1F */	lis r5, data_811EBD30@ha /* 0x811EBD30@ha */
/* 80544F64  7C 9E 23 78 */	mr r30, r4
/* 80544F68  90 65 BD 30 */	stw r3, data_811EBD30@l(r5)  /* 0x811EBD30@l */
/* 80544F6C  38 7E 01 10 */	addi r3, r30, 0x110
/* 80544F70  4B FF 62 B9 */	bl aNPC_keep_cloth_data_area
/* 80544F74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80544F78  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80544F7C  3F E3 00 02 */	addis r31, r3, 2
/* 80544F80  80 1F 60 4C */	lwz r0, 0x604c(r31)
/* 80544F84  28 00 00 00 */	cmplwi r0, 0
/* 80544F88  40 82 01 C8 */	bne lbl_80545150
/* 80544F8C  3C 60 81 1F */	lis r3, aNPC_clip@ha /* 0x811EC0CC@ha */
/* 80544F90  38 80 01 2C */	li r4, 0x12c
/* 80544F94  38 63 C0 CC */	addi r3, r3, aNPC_clip@l /* 0x811EC0CC@l */
/* 80544F98  90 7F 60 4C */	stw r3, 0x604c(r31)
/* 80544F9C  4B B1 80 CD */	bl bzero
/* 80544FA0  3C 80 80 37 */	lis r4, Actor_get_overlay_area@ha /* 0x803754B4@ha */
/* 80544FA4  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 80544FA8  38 04 54 B4 */	addi r0, r4, Actor_get_overlay_area@l /* 0x803754B4@l */
/* 80544FAC  3C 80 80 37 */	lis r4, Actor_free_overlay_area@ha /* 0x803753C4@ha */
/* 80544FB0  90 03 00 04 */	stw r0, 4(r3)
/* 80544FB4  3D 20 80 3C */	lis r9, zelda_malloc@ha /* 0x803BC45C@ha */
/* 80544FB8  3D 00 80 54 */	lis r8, aNPC_free_actor_area_proc@ha /* 0x80544EE0@ha */
/* 80544FBC  3C C0 80 54 */	lis r6, aNPC_dma_draw_data_proc@ha /* 0x80544F00@ha */
/* 80544FC0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 80544FC4  38 04 53 C4 */	addi r0, r4, Actor_free_overlay_area@l /* 0x803753C4@l */
/* 80544FC8  3E E0 80 54 */	lis r23, aNPC_set_attention_request_proc@ha /* 0x805448EC@ha */
/* 80544FCC  3C A0 80 54 */	lis r5, func_80544588@ha /* 0x80544588@ha */
/* 80544FD0  90 03 00 08 */	stw r0, 8(r3)
/* 80544FD4  3C 80 80 54 */	lis r4, aNPC_actor_ct@ha /* 0x80543E24@ha */
/* 80544FD8  3C 60 80 54 */	lis r3, aNPC_actor_dt@ha /* 0x80544314@ha */
/* 80544FDC  3F 20 80 54 */	lis r25, aNPC_actor_save@ha /* 0x80544528@ha */
/* 80544FE0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80544FE4  38 09 C4 5C */	addi r0, r9, zelda_malloc@l /* 0x803BC45C@l */
/* 80544FE8  3F 40 80 54 */	lis r26, aNPC_actor_init@ha /* 0x805439A8@ha */
/* 80544FEC  3F 60 80 54 */	lis r27, aNPC_actor_move@ha /* 0x8053DF84@ha */
/* 80544FF0  90 07 00 0C */	stw r0, 0xc(r7)
/* 80544FF4  3F 80 80 54 */	lis r28, aNPC_actor_move_show_before@ha /* 0x8053DE34@ha */
/* 80544FF8  3F A0 80 54 */	lis r29, aNPC_actor_move_show_after@ha /* 0x8053DE7C@ha */
/* 80544FFC  3D 80 80 54 */	lis r12, aNPC_actor_draw@ha /* 0x8053E7B0@ha */
/* 80545000  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80545004  38 08 4E E0 */	addi r0, r8, aNPC_free_actor_area_proc@l /* 0x80544EE0@l */
/* 80545008  3D 60 80 54 */	lis r11, aNPC_rebuild_dma@ha /* 0x8054469C@ha */
/* 8054500C  3D 40 80 54 */	lis r10, aNPC_set_request_act@ha /* 0x8053F3A0@ha */
/* 80545010  90 07 00 10 */	stw r0, 0x10(r7)
/* 80545014  3D 20 80 54 */	lis r9, aNPC_set_head_request@ha /* 0x8053CCF8@ha */
/* 80545018  3D 00 80 54 */	lis r8, aNPC_talk_demo_proc@ha /* 0x8053F9BC@ha */
/* 8054501C  3C E0 80 54 */	lis r7, aNPC_Animation_init@ha /* 0x8053B620@ha */
/* 80545020  83 1F 60 4C */	lwz r24, 0x604c(r31)
/* 80545024  38 06 4F 00 */	addi r0, r6, aNPC_dma_draw_data_proc@l /* 0x80544F00@l */
/* 80545028  3C C0 80 54 */	lis r6, aNPC_chg_schedule@ha /* 0x80543398@ha */
/* 8054502C  3A F7 48 EC */	addi r23, r23, aNPC_set_attention_request_proc@l /* 0x805448EC@l */
/* 80545030  90 18 00 14 */	stw r0, 0x14(r24)
/* 80545034  38 A5 45 88 */	addi r5, r5, func_80544588@l /* 0x80544588@l */
/* 80545038  38 84 3E 24 */	addi r4, r4, aNPC_actor_ct@l /* 0x80543E24@l */
/* 8054503C  38 63 43 14 */	addi r3, r3, aNPC_actor_dt@l /* 0x80544314@l */
/* 80545040  83 1F 60 4C */	lwz r24, 0x604c(r31)
/* 80545044  38 19 45 28 */	addi r0, r25, aNPC_actor_save@l /* 0x80544528@l */
/* 80545048  3B 5A 39 A8 */	addi r26, r26, aNPC_actor_init@l /* 0x805439A8@l */
/* 8054504C  3B 7B DF 84 */	addi r27, r27, aNPC_actor_move@l /* 0x8053DF84@l */
/* 80545050  92 F8 00 18 */	stw r23, 0x18(r24)
/* 80545054  3B 9C DE 34 */	addi r28, r28, aNPC_actor_move_show_before@l /* 0x8053DE34@l */
/* 80545058  3B BD DE 7C */	addi r29, r29, aNPC_actor_move_show_after@l /* 0x8053DE7C@l */
/* 8054505C  39 8C E7 B0 */	addi r12, r12, aNPC_actor_draw@l /* 0x8053E7B0@l */
/* 80545060  83 3F 60 4C */	lwz r25, 0x604c(r31)
/* 80545064  39 6B 46 9C */	addi r11, r11, aNPC_rebuild_dma@l /* 0x8054469C@l */
/* 80545068  39 4A F3 A0 */	addi r10, r10, aNPC_set_request_act@l /* 0x8053F3A0@l */
/* 8054506C  39 29 CC F8 */	addi r9, r9, aNPC_set_head_request@l /* 0x8053CCF8@l */
/* 80545070  90 B9 00 CC */	stw r5, 0xcc(r25)
/* 80545074  39 08 F9 BC */	addi r8, r8, aNPC_talk_demo_proc@l /* 0x8053F9BC@l */
/* 80545078  38 E7 B6 20 */	addi r7, r7, aNPC_Animation_init@l /* 0x8053B620@l */
/* 8054507C  38 A6 33 98 */	addi r5, r6, aNPC_chg_schedule@l /* 0x80543398@l */
/* 80545080  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80545084  90 86 00 D0 */	stw r4, 0xd0(r6)
/* 80545088  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8054508C  90 64 00 D4 */	stw r3, 0xd4(r4)
/* 80545090  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 80545094  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80545098  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8054509C  93 43 00 DC */	stw r26, 0xdc(r3)
/* 805450A0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450A4  93 63 00 E0 */	stw r27, 0xe0(r3)
/* 805450A8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450AC  93 83 00 E4 */	stw r28, 0xe4(r3)
/* 805450B0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450B4  93 A3 00 E8 */	stw r29, 0xe8(r3)
/* 805450B8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450BC  91 83 00 F4 */	stw r12, 0xf4(r3)
/* 805450C0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450C4  91 63 00 F8 */	stw r11, 0xf8(r3)
/* 805450C8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450CC  91 43 01 08 */	stw r10, 0x108(r3)
/* 805450D0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450D4  91 23 01 0C */	stw r9, 0x10c(r3)
/* 805450D8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450DC  91 03 01 10 */	stw r8, 0x110(r3)
/* 805450E0  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450E4  90 E3 01 14 */	stw r7, 0x114(r3)
/* 805450E8  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450EC  90 A3 01 18 */	stw r5, 0x118(r3)
/* 805450F0  3C 80 80 54 */	lis r4, aNPC_set_dst_pos@ha /* 0x8053DB28@ha */
/* 805450F4  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 805450F8  38 04 DB 28 */	addi r0, r4, aNPC_set_dst_pos@l /* 0x8053DB28@l */
/* 805450FC  3C E0 80 54 */	lis r7, aNPC_think_proc@ha /* 0x80542678@ha */
/* 80545100  90 03 01 1C */	stw r0, 0x11c(r3)
/* 80545104  3C A0 80 54 */	lis r5, func_8053CD6C@ha /* 0x8053CD6C@ha */
/* 80545108  3C 80 80 54 */	lis r4, aNPC_set_start_pos@ha /* 0x80543C1C@ha */
/* 8054510C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545110  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80545114  38 E7 26 78 */	addi r7, r7, aNPC_think_proc@l /* 0x80542678@l */
/* 80545118  38 A5 CD 6C */	addi r5, r5, func_8053CD6C@l /* 0x8053CD6C@l */
/* 8054511C  38 04 3C 1C */	addi r0, r4, aNPC_set_start_pos@l /* 0x80543C1C@l */
/* 80545120  90 E6 01 20 */	stw r7, 0x120(r6)
/* 80545124  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80545128  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8054512C  90 A4 01 24 */	stw r5, 0x124(r4)
/* 80545130  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80545134  90 04 01 28 */	stw r0, 0x128(r4)
/* 80545138  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8054513C  2C 00 00 06 */	cmpwi r0, 6
/* 80545140  41 82 00 10 */	beq lbl_80545150
/* 80545144  3C 63 00 03 */	addis r3, r3, 3
/* 80545148  38 00 00 01 */	li r0, 1
/* 8054514C  98 03 85 C2 */	stb r0, -0x7a3e(r3)
lbl_80545150:
/* 80545150  88 1E 00 E5 */	lbz r0, 0xe5(r30)
/* 80545154  2C 00 00 08 */	cmpwi r0, 8
/* 80545158  40 82 01 60 */	bne lbl_805452B8
/* 8054515C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545160  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80545164  3C 63 00 02 */	addis r3, r3, 2
/* 80545168  A0 03 64 E4 */	lhz r0, 0x64e4(r3)
/* 8054516C  3B E3 34 40 */	addi r31, r3, 0x3440
/* 80545170  3B C3 64 E4 */	addi r30, r3, 0x64e4
/* 80545174  28 00 00 00 */	cmplwi r0, 0
/* 80545178  40 82 00 3C */	bne lbl_805451B4
/* 8054517C  7F C3 F3 78 */	mr r3, r30
/* 80545180  7F E4 FB 78 */	mr r4, r31
/* 80545184  38 A0 00 01 */	li r5, 1
/* 80545188  38 C0 00 01 */	li r6, 1
/* 8054518C  4B E8 A9 2D */	bl mNpc_SetNpcList
/* 80545190  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 80545194  88 9F 08 9A */	lbz r4, 0x89a(r31)
/* 80545198  88 7F 08 9B */	lbz r3, 0x89b(r31)
/* 8054519C  88 1F 08 9C */	lbz r0, 0x89c(r31)
/* 805451A0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805451A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805451A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 805451AC  90 01 00 08 */	stw r0, 8(r1)
/* 805451B0  48 00 00 BC */	b lbl_8054526C
lbl_805451B4:
/* 805451B4  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 805451B8  38 61 00 14 */	addi r3, r1, 0x14
/* 805451BC  81 1E 00 14 */	lwz r8, 0x14(r30)
/* 805451C0  38 81 00 10 */	addi r4, r1, 0x10
/* 805451C4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 805451C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 805451CC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805451D0  38 C1 00 08 */	addi r6, r1, 8
/* 805451D4  38 E1 00 18 */	addi r7, r1, 0x18
/* 805451D8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 805451DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 805451E0  4B E6 05 E1 */	bl mFI_Wpos2BkandUtNuminBlock
/* 805451E4  2C 03 00 00 */	cmpwi r3, 0
/* 805451E8  40 82 00 28 */	bne lbl_80545210
/* 805451EC  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 805451F0  88 9F 08 9A */	lbz r4, 0x89a(r31)
/* 805451F4  88 7F 08 9B */	lbz r3, 0x89b(r31)
/* 805451F8  88 1F 08 9C */	lbz r0, 0x89c(r31)
/* 805451FC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80545200  90 81 00 10 */	stw r4, 0x10(r1)
/* 80545204  90 61 00 0C */	stw r3, 0xc(r1)
/* 80545208  90 01 00 08 */	stw r0, 8(r1)
/* 8054520C  48 00 00 60 */	b lbl_8054526C
lbl_80545210:
/* 80545210  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80545214  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80545218  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8054521C  80 C1 00 08 */	lwz r6, 8(r1)
/* 80545220  4B E8 DB 85 */	bl mNpc_CheckNpcSet
/* 80545224  2C 03 00 00 */	cmpwi r3, 0
/* 80545228  40 82 00 44 */	bne lbl_8054526C
/* 8054522C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80545230  38 61 00 0C */	addi r3, r1, 0xc
/* 80545234  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 80545238  38 81 00 08 */	addi r4, r1, 8
/* 8054523C  38 E0 00 00 */	li r7, 0
/* 80545240  4B E8 DD 75 */	bl mNpc_GetMakeUtNuminBlock_area
/* 80545244  2C 03 00 00 */	cmpwi r3, 0
/* 80545248  40 82 00 24 */	bne lbl_8054526C
/* 8054524C  88 BF 08 99 */	lbz r5, 0x899(r31)
/* 80545250  88 9F 08 9A */	lbz r4, 0x89a(r31)
/* 80545254  88 7F 08 9B */	lbz r3, 0x89b(r31)
/* 80545258  88 1F 08 9C */	lbz r0, 0x89c(r31)
/* 8054525C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80545260  90 81 00 10 */	stw r4, 0x10(r1)
/* 80545264  90 61 00 0C */	stw r3, 0xc(r1)
/* 80545268  90 01 00 08 */	stw r0, 8(r1)
lbl_8054526C:
/* 8054526C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 80545270  39 00 FF F1 */	li r8, -15
/* 80545274  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80545278  39 20 00 00 */	li r9, 0
/* 8054527C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80545280  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80545284  80 E1 00 08 */	lwz r7, 8(r1)
/* 80545288  4B E6 35 05 */	bl mFI_RegistMoveActorList
/* 8054528C  2C 03 00 00 */	cmpwi r3, 0
/* 80545290  41 82 00 28 */	beq lbl_805452B8
/* 80545294  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545298  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054529C  3C 63 00 02 */	addis r3, r3, 2
/* 805452A0  80 63 67 98 */	lwz r3, 0x6798(r3)
/* 805452A4  28 03 00 00 */	cmplwi r3, 0
/* 805452A8  41 82 00 08 */	beq lbl_805452B0
/* 805452AC  4B E9 22 B5 */	bl mNPS_reset_schedule_area
lbl_805452B0:
/* 805452B0  7F E3 FB 78 */	mr r3, r31
/* 805452B4  4B E9 22 6D */	bl mNPS_set_island_schedule_area
lbl_805452B8:
/* 805452B8  39 61 00 50 */	addi r11, r1, 0x50
/* 805452BC  4B B5 5C 4D */	bl func_8009AF08
/* 805452C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805452C4  7C 08 03 A6 */	mtlr r0
/* 805452C8  38 21 00 50 */	addi r1, r1, 0x50
/* 805452CC  4E 80 00 20 */	blr 
