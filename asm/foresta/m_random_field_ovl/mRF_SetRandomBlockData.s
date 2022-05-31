lbl_80509B8C:
/* 80509B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80509B90  7C 08 02 A6 */	mflr r0
/* 80509B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80509B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80509B9C  7C 9F 23 78 */	mr r31, r4
/* 80509BA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80509BA4  7C 7E 1B 78 */	mr r30, r3
/* 80509BA8  7F E3 FB 78 */	mr r3, r31
/* 80509BAC  4B FF F7 A1 */	bl mRF_DecideBaseCliff
/* 80509BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80509BB4  41 82 00 14 */	beq lbl_80509BC8
/* 80509BB8  7F C3 F3 78 */	mr r3, r30
/* 80509BBC  7F E4 FB 78 */	mr r4, r31
/* 80509BC0  4B FF FE FD */	bl mRF_DecideBaseRiver
/* 80509BC4  48 00 00 08 */	b lbl_80509BCC
lbl_80509BC8:
/* 80509BC8  38 60 00 00 */	li r3, 0
lbl_80509BCC:
/* 80509BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80509BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80509BD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80509BD8  7C 08 03 A6 */	mtlr r0
/* 80509BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80509BE0  4E 80 00 20 */	blr 
