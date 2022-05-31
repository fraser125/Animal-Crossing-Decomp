lbl_80506368:
/* 80506368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050636C  7C 08 02 A6 */	mflr r0
/* 80506370  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506374  39 61 00 20 */	addi r11, r1, 0x20
/* 80506378  4B B9 4B 5D */	bl func_8009AED4
/* 8050637C  7C 9E 23 78 */	mr r30, r4
/* 80506380  7C 7D 1B 78 */	mr r29, r3
/* 80506384  38 81 00 08 */	addi r4, r1, 8
/* 80506388  4B FF FE 59 */	bl Player_actor_CulcAnimation_Demo_geton_boat
/* 8050638C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80506390  7C 7F 1B 78 */	mr r31, r3
/* 80506394  7F A3 EB 78 */	mr r3, r29
/* 80506398  4B FF FE E1 */	bl Player_actor_SearchAnimation_Demo_geton_boat
/* 8050639C  7F A3 EB 78 */	mr r3, r29
/* 805063A0  4B FF FF 1D */	bl Player_actor_Movement_Demo_geton_boat
/* 805063A4  7F A3 EB 78 */	mr r3, r29
/* 805063A8  4B FD 1A 91 */	bl Player_actor_Reset_force_position_angle
/* 805063AC  7F A3 EB 78 */	mr r3, r29
/* 805063B0  4B FD 0D 45 */	bl Player_actor_recover_lean_angle
/* 805063B4  7F A3 EB 78 */	mr r3, r29
/* 805063B8  4B FC F0 61 */	bl Player_actor_set_eye_pattern_normal
/* 805063BC  7F A3 EB 78 */	mr r3, r29
/* 805063C0  7F C4 F3 78 */	mr r4, r30
/* 805063C4  4B FF FF 45 */	bl Player_actor_ObjCheck_Demo_geton_boat
/* 805063C8  7F A3 EB 78 */	mr r3, r29
/* 805063CC  7F C4 F3 78 */	mr r4, r30
/* 805063D0  4B FD D9 29 */	bl Player_actor_Item_main
/* 805063D4  7F A3 EB 78 */	mr r3, r29
/* 805063D8  7F C4 F3 78 */	mr r4, r30
/* 805063DC  7F E5 FB 78 */	mr r5, r31
/* 805063E0  4B FF FF 49 */	bl Player_actor_request_proc_index_fromDemo_geton_boat
/* 805063E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805063E8  4B B9 4B 39 */	bl func_8009AF20
/* 805063EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805063F0  7C 08 03 A6 */	mtlr r0
/* 805063F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805063F8  4E 80 00 20 */	blr 
