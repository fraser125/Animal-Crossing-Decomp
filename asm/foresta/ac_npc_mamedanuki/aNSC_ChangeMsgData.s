lbl_8055B654:
/* 8055B654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B658  7C 08 02 A6 */	mflr r0
/* 8055B65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055B664  7C BF 2B 78 */	mr r31, r5
/* 8055B668  93 C1 00 08 */	stw r30, 8(r1)
/* 8055B66C  7C 9E 23 78 */	mr r30, r4
/* 8055B670  7F E4 FB 78 */	mr r4, r31
/* 8055B674  4B E6 53 25 */	bl mMsg_ChangeMsgData
/* 8055B678  93 FE 09 C4 */	stw r31, 0x9c4(r30)
/* 8055B67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055B684  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055B688  7C 08 03 A6 */	mtlr r0
/* 8055B68C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B690  4E 80 00 20 */	blr 