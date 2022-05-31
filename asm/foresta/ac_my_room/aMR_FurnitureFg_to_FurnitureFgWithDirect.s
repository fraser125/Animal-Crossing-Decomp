lbl_80473C44:
/* 80473C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80473C48  7C 08 02 A6 */	mflr r0
/* 80473C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473C50  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80473C54  2C 00 00 01 */	cmpwi r0, 1
/* 80473C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80473C5C  7C 9F 23 78 */	mr r31, r4
/* 80473C60  41 82 00 0C */	beq lbl_80473C6C
/* 80473C64  2C 00 00 03 */	cmpwi r0, 3
/* 80473C68  40 82 00 10 */	bne lbl_80473C78
lbl_80473C6C:
/* 80473C6C  4B F7 3B 25 */	bl mRmTp_FtrItemNo2FtrIdx
/* 80473C70  7F E4 FB 78 */	mr r4, r31
/* 80473C74  4B F7 3B 61 */	bl mRmTp_FtrIdx2FtrItemNo
lbl_80473C78:
/* 80473C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80473C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80473C80  7C 08 03 A6 */	mtlr r0
/* 80473C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80473C88  4E 80 00 20 */	blr 
