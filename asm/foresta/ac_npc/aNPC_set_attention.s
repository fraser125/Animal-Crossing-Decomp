lbl_8053A85C:
/* 8053A85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053A860  7C 08 02 A6 */	mflr r0
/* 8053A864  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053A868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A86C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053A870  3C 63 00 02 */	addis r3, r3, 2
/* 8053A874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053A878  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 8053A87C  3B E3 00 A4 */	addi r31, r3, 0xa4
/* 8053A880  38 63 00 B8 */	addi r3, r3, 0xb8
/* 8053A884  88 1F 00 00 */	lbz r0, 0(r31)
/* 8053A888  28 00 00 00 */	cmplwi r0, 0
/* 8053A88C  41 82 00 14 */	beq lbl_8053A8A0
/* 8053A890  7F E4 FB 78 */	mr r4, r31
/* 8053A894  38 A0 00 14 */	li r5, 0x14
/* 8053A898  4B E8 01 8D */	bl func_803BAA24
/* 8053A89C  48 00 00 0C */	b lbl_8053A8A8
lbl_8053A8A0:
/* 8053A8A0  38 80 00 14 */	li r4, 0x14
/* 8053A8A4  4B B2 27 C5 */	bl bzero
lbl_8053A8A8:
/* 8053A8A8  38 00 00 00 */	li r0, 0
/* 8053A8AC  98 1F 00 00 */	stb r0, 0(r31)
/* 8053A8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053A8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053A8B8  7C 08 03 A6 */	mtlr r0
/* 8053A8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053A8C0  4E 80 00 20 */	blr 