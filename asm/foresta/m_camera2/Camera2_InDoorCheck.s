lbl_8037DA64:
/* 8037DA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037DA68  7C 08 02 A6 */	mflr r0
/* 8037DA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037DA70  48 02 72 5D */	bl mFI_GetFieldId
/* 8037DA74  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 8037DA78  38 60 00 00 */	li r3, 0
/* 8037DA7C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8037DA80  41 82 00 14 */	beq lbl_8037DA94
/* 8037DA84  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8037DA88  41 82 00 0C */	beq lbl_8037DA94
/* 8037DA8C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8037DA90  40 82 00 08 */	bne lbl_8037DA98
lbl_8037DA94:
/* 8037DA94  38 60 00 01 */	li r3, 1
lbl_8037DA98:
/* 8037DA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037DA9C  7C 08 03 A6 */	mtlr r0
/* 8037DAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037DAA4  4E 80 00 20 */	blr 
