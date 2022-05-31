lbl_805E17A8:
/* 805E17A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E17AC  7C 08 02 A6 */	mflr r0
/* 805E17B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E17B4  4B FF FF D1 */	bl mIV_Get_player_com_animation_index
/* 805E17B8  4B DF 74 4D */	bl func_803D8C04
/* 805E17BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E17C0  7C 08 03 A6 */	mtlr r0
/* 805E17C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805E17C8  4E 80 00 20 */	blr 
