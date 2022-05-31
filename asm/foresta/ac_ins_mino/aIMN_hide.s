lbl_8059E53C:
/* 8059E53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E540  7C 08 02 A6 */	mflr r0
/* 8059E544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E54C  7C 7F 1B 78 */	mr r31, r3
/* 8059E550  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E554  7C 9E 23 78 */	mr r30, r4
/* 8059E558  4B FF FD 0D */	bl aIMN_check_cut_tree
/* 8059E55C  2C 03 00 01 */	cmpwi r3, 1
/* 8059E560  40 82 00 18 */	bne lbl_8059E578
/* 8059E564  7F E3 FB 78 */	mr r3, r31
/* 8059E568  7F C5 F3 78 */	mr r5, r30
/* 8059E56C  38 80 00 09 */	li r4, 9
/* 8059E570  48 00 0A 7D */	bl aIMN_setupAction
/* 8059E574  48 00 00 24 */	b lbl_8059E598
lbl_8059E578:
/* 8059E578  7F E3 FB 78 */	mr r3, r31
/* 8059E57C  4B FF FA 21 */	bl aIMN_check_shake_tree
/* 8059E580  2C 03 00 01 */	cmpwi r3, 1
/* 8059E584  40 82 00 14 */	bne lbl_8059E598
/* 8059E588  7F E3 FB 78 */	mr r3, r31
/* 8059E58C  7F C5 F3 78 */	mr r5, r30
/* 8059E590  38 80 00 03 */	li r4, 3
/* 8059E594  48 00 0A 59 */	bl aIMN_setupAction
lbl_8059E598:
/* 8059E598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E59C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E5A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E5A4  7C 08 03 A6 */	mtlr r0
/* 8059E5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E5AC  4E 80 00 20 */	blr 
