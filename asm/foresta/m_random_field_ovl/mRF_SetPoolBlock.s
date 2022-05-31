lbl_8050AF60:
/* 8050AF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050AF64  7C 08 02 A6 */	mflr r0
/* 8050AF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050AF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050AF70  7C 7F 1B 78 */	mr r31, r3
/* 8050AF74  4B FF FF 41 */	bl mRF_CountPureRiver
/* 8050AF78  2C 03 00 00 */	cmpwi r3, 0
/* 8050AF7C  41 82 00 28 */	beq lbl_8050AFA4
/* 8050AF80  4B FF DE 61 */	bl mRF_GetRandom
/* 8050AF84  7C 60 1B 78 */	mr r0, r3
/* 8050AF88  7F E3 FB 78 */	mr r3, r31
/* 8050AF8C  7C 04 03 78 */	mr r4, r0
/* 8050AF90  4B FF FF 69 */	bl mRF_SetPoolDirectedRiverBlock
/* 8050AF94  2C 03 00 00 */	cmpwi r3, 0
/* 8050AF98  41 82 00 0C */	beq lbl_8050AFA4
/* 8050AF9C  38 60 00 80 */	li r3, 0x80
/* 8050AFA0  48 00 00 08 */	b lbl_8050AFA8
lbl_8050AFA4:
/* 8050AFA4  38 60 00 00 */	li r3, 0
lbl_8050AFA8:
/* 8050AFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050AFAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050AFB0  7C 08 03 A6 */	mtlr r0
/* 8050AFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8050AFB8  4E 80 00 20 */	blr 
