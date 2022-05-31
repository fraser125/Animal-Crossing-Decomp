lbl_805955E0:
/* 805955E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805955E4  7C 08 02 A6 */	mflr r0
/* 805955E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805955EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805955F0  4B B0 58 E1 */	bl func_8009AED0
/* 805955F4  7C 9C 23 78 */	mr r28, r4
/* 805955F8  7C 7D 1B 78 */	mr r29, r3
/* 805955FC  7F 83 E3 78 */	mr r3, r28
/* 80595600  4B E4 40 41 */	bl get_player_actor_withoutCheck
/* 80595604  3B DD 01 74 */	addi r30, r29, 0x174
/* 80595608  7C 7F 1B 78 */	mr r31, r3
/* 8059560C  3B A0 00 00 */	li r29, 0
lbl_80595610:
/* 80595610  80 1E 01 CC */	lwz r0, 0x1cc(r30)
/* 80595614  2C 00 00 01 */	cmpwi r0, 1
/* 80595618  40 82 00 A0 */	bne lbl_805956B8
/* 8059561C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80595620  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 80595624  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80595628  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8059562C  70 00 00 50 */	andi. r0, r0, 0x50
/* 80595630  41 82 00 7C */	beq lbl_805956AC
/* 80595634  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 80595638  2C 00 00 00 */	cmpwi r0, 0
/* 8059563C  40 82 00 14 */	bne lbl_80595650
/* 80595640  81 9E 01 D4 */	lwz r12, 0x1d4(r30)
/* 80595644  7F C3 F3 78 */	mr r3, r30
/* 80595648  7D 89 03 A6 */	mtctr r12
/* 8059564C  4E 80 04 21 */	bctrl 
lbl_80595650:
/* 80595650  7F C3 F3 78 */	mr r3, r30
/* 80595654  7F E4 FB 78 */	mr r4, r31
/* 80595658  4B FF F6 E1 */	bl aINS_set_player_info
/* 8059565C  7F C3 F3 78 */	mr r3, r30
/* 80595660  4B FF F7 71 */	bl aINS_BGcheck
/* 80595664  7F C3 F3 78 */	mr r3, r30
/* 80595668  7F 84 E3 78 */	mr r4, r28
/* 8059566C  4B FF FA A5 */	bl aINS_calc_patience
/* 80595670  7F C3 F3 78 */	mr r3, r30
/* 80595674  4B FF FB 41 */	bl aINS_calc_life_time
/* 80595678  7F C3 F3 78 */	mr r3, r30
/* 8059567C  4B FF FB 6D */	bl aINS_calc_alpha_time
/* 80595680  81 9E 01 64 */	lwz r12, 0x164(r30)
/* 80595684  7F C3 F3 78 */	mr r3, r30
/* 80595688  7F 84 E3 78 */	mr r4, r28
/* 8059568C  7D 89 03 A6 */	mtctr r12
/* 80595690  4E 80 04 21 */	bctrl 
/* 80595694  3C 80 80 65 */	lis r4, lit_615@ha /* 0x80649D28@ha */
/* 80595698  7F C3 F3 78 */	mr r3, r30
/* 8059569C  C0 24 9D 28 */	lfs f1, lit_615@l(r4)  /* 0x80649D28@l */
/* 805956A0  4B DD EB 31 */	bl func_803741D0
/* 805956A4  7F C3 F3 78 */	mr r3, r30
/* 805956A8  4B FF FD E5 */	bl aINS_set_catch_range
lbl_805956AC:
/* 805956AC  7F C3 F3 78 */	mr r3, r30
/* 805956B0  7F 84 E3 78 */	mr r4, r28
/* 805956B4  4B FF FB D1 */	bl aINS_cull_check
lbl_805956B8:
/* 805956B8  3B BD 00 01 */	addi r29, r29, 1
/* 805956BC  3B DE 02 88 */	addi r30, r30, 0x288
/* 805956C0  2C 1D 00 09 */	cmpwi r29, 9
/* 805956C4  41 80 FF 4C */	blt lbl_80595610
/* 805956C8  7F 83 E3 78 */	mr r3, r28
/* 805956CC  4B FF FE 75 */	bl aINS_check_birth_ant
/* 805956D0  38 60 00 00 */	li r3, 0
/* 805956D4  38 80 FF FF */	li r4, -1
/* 805956D8  38 A0 FF FF */	li r5, -1
/* 805956DC  4B FF F4 7D */	bl aINS_set_pl_act_tim
/* 805956E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805956E4  4B B0 58 39 */	bl func_8009AF1C
/* 805956E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805956EC  7C 08 03 A6 */	mtlr r0
/* 805956F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805956F4  4E 80 00 20 */	blr 
