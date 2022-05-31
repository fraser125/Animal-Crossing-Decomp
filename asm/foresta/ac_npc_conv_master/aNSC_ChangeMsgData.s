lbl_80546D6C:
/* 80546D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546D70  7C 08 02 A6 */	mflr r0
/* 80546D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80546D7C  7C BF 2B 78 */	mr r31, r5
/* 80546D80  93 C1 00 08 */	stw r30, 8(r1)
/* 80546D84  7C 9E 23 78 */	mr r30, r4
/* 80546D88  7F E4 FB 78 */	mr r4, r31
/* 80546D8C  4B E7 9C 0D */	bl mMsg_ChangeMsgData
/* 80546D90  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 80546D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80546D9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80546DA0  7C 08 03 A6 */	mtlr r0
/* 80546DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80546DA8  4E 80 00 20 */	blr 
