lbl_8054AB30:
/* 8054AB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AB34  7C 08 02 A6 */	mflr r0
/* 8054AB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054AB40  7C 7F 1B 78 */	mr r31, r3
/* 8054AB44  80 63 09 AC */	lwz r3, 0x9ac(r3)
/* 8054AB48  4B FF BC 51 */	bl aNSC_get_sell_price
/* 8054AB4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054AB50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054AB54  3C 63 00 02 */	addis r3, r3, 2
/* 8054AB58  80 63 60 60 */	lwz r3, 0x6060(r3)
/* 8054AB5C  28 03 00 00 */	cmplwi r3, 0
/* 8054AB60  41 82 00 18 */	beq lbl_8054AB78
/* 8054AB64  81 83 00 08 */	lwz r12, 8(r3)
/* 8054AB68  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 8054AB6C  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 8054AB70  7D 89 03 A6 */	mtctr r12
/* 8054AB74  4E 80 04 21 */	bctrl 
lbl_8054AB78:
/* 8054AB78  38 00 00 00 */	li r0, 0
/* 8054AB7C  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 8054AB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AB84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054AB88  7C 08 03 A6 */	mtlr r0
/* 8054AB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AB90  4E 80 00 20 */	blr 
