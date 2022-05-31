lbl_803C7244:
/* 803C7244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7248  7C 08 02 A6 */	mflr r0
/* 803C724C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C7250  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7254  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C7258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C725C  3B E3 00 20 */	addi r31, r3, 0x20
/* 803C7260  93 C1 00 08 */	stw r30, 8(r1)
/* 803C7264  3B C0 00 00 */	li r30, 0
lbl_803C7268:
/* 803C7268  7F E3 FB 78 */	mr r3, r31
/* 803C726C  48 01 8D D9 */	bl mPr_NullCheckPersonalID
/* 803C7270  2C 03 00 00 */	cmpwi r3, 0
/* 803C7274  40 82 00 10 */	bne lbl_803C7284
/* 803C7278  7F E3 FB 78 */	mr r3, r31
/* 803C727C  38 80 00 40 */	li r4, 0x40
/* 803C7280  4B FF FF 35 */	bl mMsm_SetPrivateCompMail
lbl_803C7284:
/* 803C7284  3B DE 00 01 */	addi r30, r30, 1
/* 803C7288  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803C728C  2C 1E 00 04 */	cmpwi r30, 4
/* 803C7290  41 80 FF D8 */	blt lbl_803C7268
/* 803C7294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C729C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C72A0  7C 08 03 A6 */	mtlr r0
/* 803C72A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C72A8  4E 80 00 20 */	blr 
