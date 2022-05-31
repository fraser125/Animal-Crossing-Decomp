lbl_80557D08:
/* 80557D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557D0C  7C 08 02 A6 */	mflr r0
/* 80557D10  3C C0 80 6A */	lis r6, think_proc@ha /* 0x806A697C@ha */
/* 80557D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557D18  54 A0 10 3A */	slwi r0, r5, 2
/* 80557D1C  38 A6 69 7C */	addi r5, r6, think_proc@l /* 0x806A697C@l */
/* 80557D20  7D 85 00 2E */	lwzx r12, r5, r0
/* 80557D24  7D 89 03 A6 */	mtctr r12
/* 80557D28  4E 80 04 21 */	bctrl 
/* 80557D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80557D30  7C 08 03 A6 */	mtlr r0
/* 80557D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80557D38  4E 80 00 20 */	blr 
