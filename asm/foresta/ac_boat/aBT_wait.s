lbl_805A7B68:
/* 805A7B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7B6C  7C 08 02 A6 */	mflr r0
/* 805A7B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7B78  7C 9F 23 78 */	mr r31, r4
/* 805A7B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7B80  7C 7E 1B 78 */	mr r30, r3
/* 805A7B84  4B FF F7 A1 */	bl aBT_check_alive
/* 805A7B88  2C 03 00 00 */	cmpwi r3, 0
/* 805A7B8C  40 82 00 10 */	bne lbl_805A7B9C
/* 805A7B90  38 00 FF FF */	li r0, -1
/* 805A7B94  90 1E 02 B4 */	stw r0, 0x2b4(r30)
/* 805A7B98  48 00 00 2C */	b lbl_805A7BC4
lbl_805A7B9C:
/* 805A7B9C  80 7E 01 4C */	lwz r3, 0x14c(r30)
/* 805A7BA0  28 03 00 00 */	cmplwi r3, 0
/* 805A7BA4  41 82 00 20 */	beq lbl_805A7BC4
/* 805A7BA8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805A7BAC  2C 00 00 02 */	cmpwi r0, 2
/* 805A7BB0  40 82 00 14 */	bne lbl_805A7BC4
/* 805A7BB4  7F C3 F3 78 */	mr r3, r30
/* 805A7BB8  7F E4 FB 78 */	mr r4, r31
/* 805A7BBC  38 A0 00 02 */	li r5, 2
/* 805A7BC0  48 00 07 8D */	bl aBT_setupAction
lbl_805A7BC4:
/* 805A7BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7BD0  7C 08 03 A6 */	mtlr r0
/* 805A7BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7BD8  4E 80 00 20 */	blr 
