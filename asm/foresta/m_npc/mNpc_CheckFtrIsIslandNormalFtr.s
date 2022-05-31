lbl_803D4A68:
/* 803D4A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D4A6C  7C 08 02 A6 */	mflr r0
/* 803D4A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D4A74  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D4A78  2C 00 00 01 */	cmpwi r0, 1
/* 803D4A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D4A80  3B E0 00 00 */	li r31, 0
/* 803D4A84  41 82 00 0C */	beq lbl_803D4A90
/* 803D4A88  2C 00 00 03 */	cmpwi r0, 3
/* 803D4A8C  40 82 00 14 */	bne lbl_803D4AA0
lbl_803D4A90:
/* 803D4A90  4B FF FF 41 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D4A94  2C 03 00 00 */	cmpwi r3, 0
/* 803D4A98  40 82 00 08 */	bne lbl_803D4AA0
/* 803D4A9C  3B E0 00 01 */	li r31, 1
lbl_803D4AA0:
/* 803D4AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D4AA4  7F E3 FB 78 */	mr r3, r31
/* 803D4AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D4AAC  7C 08 03 A6 */	mtlr r0
/* 803D4AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D4AB4  4E 80 00 20 */	blr 
