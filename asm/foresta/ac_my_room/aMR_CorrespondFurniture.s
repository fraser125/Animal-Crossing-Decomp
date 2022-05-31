lbl_80473BC8:
/* 80473BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80473BCC  7C 08 02 A6 */	mflr r0
/* 80473BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473BD4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80473BD8  2C 00 00 01 */	cmpwi r0, 1
/* 80473BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80473BE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80473BE4  7C 9E 23 78 */	mr r30, r4
/* 80473BE8  41 82 00 0C */	beq lbl_80473BF4
/* 80473BEC  2C 00 00 03 */	cmpwi r0, 3
/* 80473BF0  40 82 00 38 */	bne lbl_80473C28
lbl_80473BF4:
/* 80473BF4  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 80473BF8  2C 00 00 01 */	cmpwi r0, 1
/* 80473BFC  41 82 00 0C */	beq lbl_80473C08
/* 80473C00  2C 00 00 03 */	cmpwi r0, 3
/* 80473C04  40 82 00 24 */	bne lbl_80473C28
lbl_80473C08:
/* 80473C08  4B F7 3B 89 */	bl mRmTp_FtrItemNo2FtrIdx
/* 80473C0C  7C 7F 1B 78 */	mr r31, r3
/* 80473C10  7F C3 F3 78 */	mr r3, r30
/* 80473C14  4B F7 3B 7D */	bl mRmTp_FtrItemNo2FtrIdx
/* 80473C18  7C 1F 18 00 */	cmpw r31, r3
/* 80473C1C  40 82 00 0C */	bne lbl_80473C28
/* 80473C20  38 60 00 01 */	li r3, 1
/* 80473C24  48 00 00 08 */	b lbl_80473C2C
lbl_80473C28:
/* 80473C28  38 60 00 00 */	li r3, 0
lbl_80473C2C:
/* 80473C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80473C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80473C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80473C38  7C 08 03 A6 */	mtlr r0
/* 80473C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80473C40  4E 80 00 20 */	blr 
