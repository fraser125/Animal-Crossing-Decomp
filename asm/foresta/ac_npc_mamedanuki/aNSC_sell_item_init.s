lbl_8055E9E4:
/* 8055E9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E9E8  7C 08 02 A6 */	mflr r0
/* 8055E9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E9F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E9F4  7C 7F 1B 78 */	mr r31, r3
/* 8055E9F8  80 63 09 AC */	lwz r3, 0x9ac(r3)
/* 8055E9FC  4B FF C6 95 */	bl aNSC_get_sell_price
/* 8055EA00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055EA04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055EA08  3C 63 00 02 */	addis r3, r3, 2
/* 8055EA0C  80 63 60 60 */	lwz r3, 0x6060(r3)
/* 8055EA10  28 03 00 00 */	cmplwi r3, 0
/* 8055EA14  41 82 00 18 */	beq lbl_8055EA2C
/* 8055EA18  81 83 00 08 */	lwz r12, 8(r3)
/* 8055EA1C  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 8055EA20  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 8055EA24  7D 89 03 A6 */	mtctr r12
/* 8055EA28  4E 80 04 21 */	bctrl 
lbl_8055EA2C:
/* 8055EA2C  38 00 00 00 */	li r0, 0
/* 8055EA30  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 8055EA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055EA3C  7C 08 03 A6 */	mtlr r0
/* 8055EA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EA44  4E 80 00 20 */	blr 
