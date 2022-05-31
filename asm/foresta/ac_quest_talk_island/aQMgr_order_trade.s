lbl_8048F9A8:
/* 8048F9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F9AC  7C 08 02 A6 */	mflr r0
/* 8048F9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F9B4  A0 83 01 B6 */	lhz r4, 0x1b6(r3)
/* 8048F9B8  2C 04 00 00 */	cmpwi r4, 0
/* 8048F9BC  40 81 00 0C */	ble lbl_8048F9C8
/* 8048F9C0  2C 04 00 18 */	cmpwi r4, 0x18
/* 8048F9C4  40 81 00 08 */	ble lbl_8048F9CC
lbl_8048F9C8:
/* 8048F9C8  38 80 00 01 */	li r4, 1
lbl_8048F9CC:
/* 8048F9CC  38 04 FF FF */	addi r0, r4, -1
/* 8048F9D0  3C 80 80 69 */	lis r4, move_proc@ha /* 0x8068B288@ha */
/* 8048F9D4  54 00 10 3A */	slwi r0, r0, 2
/* 8048F9D8  38 84 B2 88 */	addi r4, r4, move_proc@l /* 0x8068B288@l */
/* 8048F9DC  7D 84 00 2E */	lwzx r12, r4, r0
/* 8048F9E0  7D 89 03 A6 */	mtctr r12
/* 8048F9E4  4E 80 04 21 */	bctrl 
/* 8048F9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F9EC  7C 08 03 A6 */	mtlr r0
/* 8048F9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F9F4  4E 80 00 20 */	blr 
