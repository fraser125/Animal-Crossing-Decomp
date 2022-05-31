lbl_80585BD4:
/* 80585BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585BD8  7C 08 02 A6 */	mflr r0
/* 80585BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585BE4  7C 7F 1B 78 */	mr r31, r3
/* 80585BE8  80 63 09 AC */	lwz r3, 0x9ac(r3)
/* 80585BEC  4B FF BC 51 */	bl aNSC_get_sell_price
/* 80585BF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80585BF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80585BF8  3C 63 00 02 */	addis r3, r3, 2
/* 80585BFC  80 63 60 60 */	lwz r3, 0x6060(r3)
/* 80585C00  28 03 00 00 */	cmplwi r3, 0
/* 80585C04  41 82 00 18 */	beq lbl_80585C1C
/* 80585C08  81 83 00 08 */	lwz r12, 8(r3)
/* 80585C0C  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 80585C10  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 80585C14  7D 89 03 A6 */	mtctr r12
/* 80585C18  4E 80 04 21 */	bctrl 
lbl_80585C1C:
/* 80585C1C  38 00 00 00 */	li r0, 0
/* 80585C20  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 80585C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585C2C  7C 08 03 A6 */	mtlr r0
/* 80585C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80585C34  4E 80 00 20 */	blr 
