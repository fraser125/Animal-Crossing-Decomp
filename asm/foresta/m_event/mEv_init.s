lbl_8039D4B8:
/* 8039D4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039D4BC  7C 08 02 A6 */	mflr r0
/* 8039D4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039D4C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039D4C8  3B E0 00 00 */	li r31, 0
/* 8039D4CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8039D4D0  7C 7E 1B 78 */	mr r30, r3
/* 8039D4D4  4B FF D9 E5 */	bl mEv_CheckTitleDemo
/* 8039D4D8  2C 03 00 00 */	cmpwi r3, 0
/* 8039D4DC  40 82 00 14 */	bne lbl_8039D4F0
/* 8039D4E0  4B FF FA 1D */	bl effective_scene
/* 8039D4E4  2C 03 00 00 */	cmpwi r3, 0
/* 8039D4E8  41 82 00 08 */	beq lbl_8039D4F0
/* 8039D4EC  3B E0 00 01 */	li r31, 1
lbl_8039D4F0:
/* 8039D4F0  7F C3 F3 78 */	mr r3, r30
/* 8039D4F4  7F E4 FB 78 */	mr r4, r31
/* 8039D4F8  4B FF FE A9 */	bl init_event
/* 8039D4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039D500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039D504  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039D508  7C 08 03 A6 */	mtlr r0
/* 8039D50C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039D510  4E 80 00 20 */	blr 
