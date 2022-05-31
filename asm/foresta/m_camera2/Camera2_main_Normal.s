lbl_803807C4:
/* 803807C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803807C8  7C 08 02 A6 */	mflr r0
/* 803807CC  38 80 00 00 */	li r4, 0
/* 803807D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803807D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803807D8  7C 7F 1B 78 */	mr r31, r3
/* 803807DC  4B FF FD 9D */	bl Camera2_main_Normal_SetPos_fromPlayer
/* 803807E0  7F E3 FB 78 */	mr r3, r31
/* 803807E4  4B FF EC C1 */	bl Camera2_sound_Set_Ground
/* 803807E8  7F E3 FB 78 */	mr r3, r31
/* 803807EC  4B FF EA 15 */	bl Camera2_SetMicPos
/* 803807F0  7F E3 FB 78 */	mr r3, r31
/* 803807F4  48 00 2A A5 */	bl Camera2_change_main_index
/* 803807F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803807FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80380800  7C 08 03 A6 */	mtlr r0
/* 80380804  38 21 00 10 */	addi r1, r1, 0x10
/* 80380808  4E 80 00 20 */	blr 
