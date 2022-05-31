lbl_8058B598:
/* 8058B598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B59C  7C 08 02 A6 */	mflr r0
/* 8058B5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B5A8  7C 9F 23 78 */	mr r31, r4
/* 8058B5AC  38 80 00 08 */	li r4, 8
/* 8058B5B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8058B5B4  7C 7E 1B 78 */	mr r30, r3
/* 8058B5B8  38 60 00 0F */	li r3, 0xf
/* 8058B5BC  4B E1 28 11 */	bl mEv_get_save_area
/* 8058B5C0  28 03 00 00 */	cmplwi r3, 0
/* 8058B5C4  41 82 00 14 */	beq lbl_8058B5D8
/* 8058B5C8  38 80 00 01 */	li r4, 1
/* 8058B5CC  38 00 00 03 */	li r0, 3
/* 8058B5D0  B0 83 00 02 */	sth r4, 2(r3)
/* 8058B5D4  98 03 00 00 */	stb r0, 0(r3)
lbl_8058B5D8:
/* 8058B5D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058B5DC  7F C3 F3 78 */	mr r3, r30
/* 8058B5E0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058B5E4  7F E4 FB 78 */	mr r4, r31
/* 8058B5E8  3C A5 00 02 */	addis r5, r5, 2
/* 8058B5EC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058B5F0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8058B5F4  7D 89 03 A6 */	mtctr r12
/* 8058B5F8  4E 80 04 21 */	bctrl 
/* 8058B5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B604  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058B608  7C 08 03 A6 */	mtlr r0
/* 8058B60C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B610  4E 80 00 20 */	blr 
