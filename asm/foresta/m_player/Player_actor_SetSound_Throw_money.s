lbl_805004B8:
/* 805004B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805004BC  7C 08 02 A6 */	mflr r0
/* 805004C0  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 805004C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805004C8  C0 24 7A 44 */	lfs f1, lit_3573@l(r4)  /* 0x80647A44@l */
/* 805004CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805004D0  7C 7F 1B 78 */	mr r31, r3
/* 805004D4  38 7F 01 74 */	addi r3, r31, 0x174
/* 805004D8  4B FD 71 29 */	bl Player_actor_Check_AnimationFrame
/* 805004DC  2C 03 00 00 */	cmpwi r3, 0
/* 805004E0  41 82 00 0C */	beq lbl_805004EC
/* 805004E4  7F E3 FB 78 */	mr r3, r31
/* 805004E8  4B FD F4 05 */	bl Player_actor_sound_coin_gasagoso
lbl_805004EC:
/* 805004EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805004F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805004F4  7C 08 03 A6 */	mtlr r0
/* 805004F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805004FC  4E 80 00 20 */	blr 
