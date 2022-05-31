lbl_8062E238:
/* 8062E238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062E23C  7C 08 02 A6 */	mflr r0
/* 8062E240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062E248  7C 9F 23 78 */	mr r31, r4
/* 8062E24C  38 81 00 08 */	addi r4, r1, 8
/* 8062E250  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062E254  7C 7E 1B 78 */	mr r30, r3
/* 8062E258  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E25C  4B FF FA 29 */	bl sAdo_Calc_MicPosition_forLevel
/* 8062E260  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8062E264  7F C3 F3 78 */	mr r3, r30
/* 8062E268  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E26C  7F E4 FB 78 */	mr r4, r31
/* 8062E270  4B 9E 5C 4D */	bl Na_RhythmPos
/* 8062E274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062E278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062E27C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062E280  7C 08 03 A6 */	mtlr r0
/* 8062E284  38 21 00 20 */	addi r1, r1, 0x20
/* 8062E288  4E 80 00 20 */	blr 
