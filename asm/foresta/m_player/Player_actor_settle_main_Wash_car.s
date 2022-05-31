lbl_804FF8D0:
/* 804FF8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FF8D4  7C 08 02 A6 */	mflr r0
/* 804FF8D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804FF8DC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804FF8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FF8E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804FF8E8  80 A3 0D 24 */	lwz r5, 0xd24(r3)
/* 804FF8EC  80 03 0D 28 */	lwz r0, 0xd28(r3)
/* 804FF8F0  90 A3 00 28 */	stw r5, 0x28(r3)
/* 804FF8F4  3C A4 00 02 */	addis r5, r4, 2
/* 804FF8F8  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804FF8FC  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804FF900  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804FF904  90 03 00 30 */	stw r0, 0x30(r3)
/* 804FF908  A8 03 0D 30 */	lha r0, 0xd30(r3)
/* 804FF90C  B0 03 00 DE */	sth r0, 0xde(r3)
/* 804FF910  B0 03 00 36 */	sth r0, 0x36(r3)
/* 804FF914  38 60 00 1E */	li r3, 0x1e
/* 804FF918  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804FF91C  81 85 00 04 */	lwz r12, 4(r5)
/* 804FF920  7D 89 03 A6 */	mtctr r12
/* 804FF924  4E 80 04 21 */	bctrl 
/* 804FF928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FF92C  7C 08 03 A6 */	mtlr r0
/* 804FF930  38 21 00 10 */	addi r1, r1, 0x10
/* 804FF934  4E 80 00 20 */	blr 
