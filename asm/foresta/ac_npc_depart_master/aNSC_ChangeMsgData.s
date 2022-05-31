lbl_8054E684:
/* 8054E684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E688  7C 08 02 A6 */	mflr r0
/* 8054E68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E694  7C BF 2B 78 */	mr r31, r5
/* 8054E698  93 C1 00 08 */	stw r30, 8(r1)
/* 8054E69C  7C 9E 23 78 */	mr r30, r4
/* 8054E6A0  7F E4 FB 78 */	mr r4, r31
/* 8054E6A4  4B E7 22 F5 */	bl mMsg_ChangeMsgData
/* 8054E6A8  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 8054E6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E6B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E6B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054E6B8  7C 08 03 A6 */	mtlr r0
/* 8054E6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E6C0  4E 80 00 20 */	blr 
