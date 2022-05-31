lbl_8051BEA0:
/* 8051BEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BEA4  7C 08 02 A6 */	mflr r0
/* 8051BEA8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051BEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BEB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BEB4  7C 9F 23 78 */	mr r31, r4
/* 8051BEB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8051BEBC  7C 7E 1B 78 */	mr r30, r3
/* 8051BEC0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8051BEC4  3C 63 00 02 */	addis r3, r3, 2
/* 8051BEC8  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8051BECC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8051BED0  28 00 00 02 */	cmplwi r0, 2
/* 8051BED4  40 82 00 2C */	bne lbl_8051BF00
/* 8051BED8  38 60 00 04 */	li r3, 4
/* 8051BEDC  38 80 00 01 */	li r4, 1
/* 8051BEE0  38 A0 00 03 */	li r5, 3
/* 8051BEE4  4B E7 C5 55 */	bl mDemo_Set_OrderValue
/* 8051BEE8  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051BEEC  7F C3 F3 78 */	mr r3, r30
/* 8051BEF0  7F E4 FB 78 */	mr r4, r31
/* 8051BEF4  80 BE 09 AC */	lwz r5, 0x9ac(r30)
/* 8051BEF8  7D 89 03 A6 */	mtctr r12
/* 8051BEFC  4E 80 04 21 */	bctrl 
lbl_8051BF00:
/* 8051BF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BF08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051BF0C  7C 08 03 A6 */	mtlr r0
/* 8051BF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BF14  4E 80 00 20 */	blr 
