lbl_803812EC:
/* 803812EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803812F0  7C 08 02 A6 */	mflr r0
/* 803812F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803812F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803812FC  7C 7F 1B 78 */	mr r31, r3
/* 80381300  4B FF FF 25 */	bl Camera2_SetPos_Lock
/* 80381304  7F E3 FB 78 */	mr r3, r31
/* 80381308  4B FF E1 9D */	bl Camera2_sound_Set_Ground
/* 8038130C  7F E3 FB 78 */	mr r3, r31
/* 80381310  4B FF DE F1 */	bl Camera2_SetMicPos
/* 80381314  7F E3 FB 78 */	mr r3, r31
/* 80381318  48 00 1F 81 */	bl Camera2_change_main_index
/* 8038131C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80381320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80381324  7C 08 03 A6 */	mtlr r0
/* 80381328  38 21 00 10 */	addi r1, r1, 0x10
/* 8038132C  4E 80 00 20 */	blr 
