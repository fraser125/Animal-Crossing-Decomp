lbl_8050A7DC:
/* 8050A7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050A7E0  7C 08 02 A6 */	mflr r0
/* 8050A7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050A7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050A7EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8050A7F0  7C 7E 1B 78 */	mr r30, r3
/* 8050A7F4  4B FF F4 81 */	bl mRF_SetBridgeBlock
/* 8050A7F8  7C 7F 1B 78 */	mr r31, r3
/* 8050A7FC  7F C3 F3 78 */	mr r3, r30
/* 8050A800  4B FF FE F1 */	bl mRF_SetSlopeBlock
/* 8050A804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050A808  7F FF 1B 78 */	or r31, r31, r3
/* 8050A80C  7F E3 FB 78 */	mr r3, r31
/* 8050A810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050A814  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050A818  7C 08 03 A6 */	mtlr r0
/* 8050A81C  38 21 00 10 */	addi r1, r1, 0x10
/* 8050A820  4E 80 00 20 */	blr 
