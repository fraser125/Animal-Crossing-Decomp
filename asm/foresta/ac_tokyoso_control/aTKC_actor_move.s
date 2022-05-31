lbl_804AAA18:
/* 804AAA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAA1C  7C 08 02 A6 */	mflr r0
/* 804AAA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAA24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAA28  7C 7F 1B 78 */	mr r31, r3
/* 804AAA2C  38 60 00 0F */	li r3, 0xf
/* 804AAA30  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAA34  7C 9E 23 78 */	mr r30, r4
/* 804AAA38  38 80 00 08 */	li r4, 8
/* 804AAA3C  4B EF 33 91 */	bl mEv_get_save_area
/* 804AAA40  88 03 00 00 */	lbz r0, 0(r3)
/* 804AAA44  28 00 00 03 */	cmplwi r0, 3
/* 804AAA48  40 82 00 20 */	bne lbl_804AAA68
/* 804AAA4C  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 804AAA50  2C 00 00 01 */	cmpwi r0, 1
/* 804AAA54  41 82 00 14 */	beq lbl_804AAA68
/* 804AAA58  7F E3 FB 78 */	mr r3, r31
/* 804AAA5C  38 80 00 01 */	li r4, 1
/* 804AAA60  48 00 04 DD */	bl aTKC_setupAction
/* 804AAA64  48 00 00 18 */	b lbl_804AAA7C
lbl_804AAA68:
/* 804AAA68  81 9F 01 9C */	lwz r12, 0x19c(r31)
/* 804AAA6C  7F E3 FB 78 */	mr r3, r31
/* 804AAA70  7F C4 F3 78 */	mr r4, r30
/* 804AAA74  7D 89 03 A6 */	mtctr r12
/* 804AAA78  4E 80 04 21 */	bctrl 
lbl_804AAA7C:
/* 804AAA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAA80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAA84  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AAA88  7C 08 03 A6 */	mtlr r0
/* 804AAA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAA90  4E 80 00 20 */	blr 
