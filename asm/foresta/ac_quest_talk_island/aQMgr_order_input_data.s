lbl_8048FBF8:
/* 8048FBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FBFC  7C 08 02 A6 */	mflr r0
/* 8048FC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FC04  A0 83 01 B6 */	lhz r4, 0x1b6(r3)
/* 8048FC08  2C 04 00 00 */	cmpwi r4, 0
/* 8048FC0C  40 81 00 0C */	ble lbl_8048FC18
/* 8048FC10  2C 04 00 02 */	cmpwi r4, 2
/* 8048FC14  40 81 00 08 */	ble lbl_8048FC1C
lbl_8048FC18:
/* 8048FC18  38 80 00 01 */	li r4, 1
lbl_8048FC1C:
/* 8048FC1C  38 04 FF FF */	addi r0, r4, -1
/* 8048FC20  3C 80 80 69 */	lis r4, input_proc@ha /* 0x8068B2E8@ha */
/* 8048FC24  54 00 10 3A */	slwi r0, r0, 2
/* 8048FC28  38 84 B2 E8 */	addi r4, r4, input_proc@l /* 0x8068B2E8@l */
/* 8048FC2C  7D 84 00 2E */	lwzx r12, r4, r0
/* 8048FC30  7D 89 03 A6 */	mtctr r12
/* 8048FC34  4E 80 04 21 */	bctrl 
/* 8048FC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FC3C  7C 08 03 A6 */	mtlr r0
/* 8048FC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FC44  4E 80 00 20 */	blr 
