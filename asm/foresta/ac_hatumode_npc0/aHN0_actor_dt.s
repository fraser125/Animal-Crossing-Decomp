lbl_8052ABA8:
/* 8052ABA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052ABAC  7C 08 02 A6 */	mflr r0
/* 8052ABB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052ABB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052ABB8  4B B7 03 1D */	bl func_8009AED4
/* 8052ABBC  7C 7D 1B 78 */	mr r29, r3
/* 8052ABC0  7C 9E 23 78 */	mr r30, r4
/* 8052ABC4  38 60 00 01 */	li r3, 1
/* 8052ABC8  38 80 00 07 */	li r4, 7
/* 8052ABCC  4B E7 32 01 */	bl mEv_get_save_area
/* 8052ABD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052ABD4  7C 7F 1B 78 */	mr r31, r3
/* 8052ABD8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052ABDC  7F A3 EB 78 */	mr r3, r29
/* 8052ABE0  3C A4 00 02 */	addis r5, r4, 2
/* 8052ABE4  7F C4 F3 78 */	mr r4, r30
/* 8052ABE8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8052ABEC  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8052ABF0  7D 89 03 A6 */	mtctr r12
/* 8052ABF4  4E 80 04 21 */	bctrl 
/* 8052ABF8  A0 1D 00 06 */	lhz r0, 6(r29)
/* 8052ABFC  28 00 D0 58 */	cmplwi r0, 0xd058
/* 8052AC00  40 82 00 14 */	bne lbl_8052AC14
/* 8052AC04  38 60 00 01 */	li r3, 1
/* 8052AC08  38 00 00 02 */	li r0, 2
/* 8052AC0C  B0 7F 00 02 */	sth r3, 2(r31)
/* 8052AC10  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8052AC14:
/* 8052AC14  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AC18  4B B7 03 09 */	bl func_8009AF20
/* 8052AC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052AC20  7C 08 03 A6 */	mtlr r0
/* 8052AC24  38 21 00 20 */	addi r1, r1, 0x20
/* 8052AC28  4E 80 00 20 */	blr 
