lbl_8049B868:
/* 8049B868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049B86C  7C 08 02 A6 */	mflr r0
/* 8049B870  2C 05 00 0B */	cmpwi r5, 0xb
/* 8049B874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049B878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049B87C  3B E0 00 00 */	li r31, 0
/* 8049B880  93 C1 00 08 */	stw r30, 8(r1)
/* 8049B884  7C 9E 23 78 */	mr r30, r4
/* 8049B888  88 03 00 03 */	lbz r0, 3(r3)
/* 8049B88C  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 8049B890  41 82 00 08 */	beq lbl_8049B898
/* 8049B894  48 00 00 20 */	b lbl_8049B8B4
lbl_8049B898:
/* 8049B898  4B EF 4B 81 */	bl mCoBG_CheckHole_OrgAttr
/* 8049B89C  2C 03 00 01 */	cmpwi r3, 1
/* 8049B8A0  40 82 00 14 */	bne lbl_8049B8B4
/* 8049B8A4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8049B8A8  28 00 00 00 */	cmplwi r0, 0
/* 8049B8AC  40 82 00 08 */	bne lbl_8049B8B4
/* 8049B8B0  3B E0 00 01 */	li r31, 1
lbl_8049B8B4:
/* 8049B8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049B8B8  7F E3 FB 78 */	mr r3, r31
/* 8049B8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049B8C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049B8C4  7C 08 03 A6 */	mtlr r0
/* 8049B8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049B8CC  4E 80 00 20 */	blr 
