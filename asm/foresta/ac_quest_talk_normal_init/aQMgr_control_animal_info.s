lbl_804944A8:
/* 804944A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804944AC  7C 08 02 A6 */	mflr r0
/* 804944B0  3C 80 80 64 */	lis r4, lit_1325@ha /* 0x80644C84@ha */
/* 804944B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804944B8  38 A4 4C 84 */	addi r5, r4, lit_1325@l /* 0x80644C84@l */
/* 804944BC  A0 C3 01 B6 */	lhz r6, 0x1b6(r3)
/* 804944C0  80 85 00 00 */	lwz r4, 0(r5)
/* 804944C4  80 05 00 04 */	lwz r0, 4(r5)
/* 804944C8  2C 06 00 00 */	cmpwi r6, 0
/* 804944CC  90 81 00 08 */	stw r4, 8(r1)
/* 804944D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804944D4  40 81 00 0C */	ble lbl_804944E0
/* 804944D8  2C 06 00 02 */	cmpwi r6, 2
/* 804944DC  40 81 00 08 */	ble lbl_804944E4
lbl_804944E0:
/* 804944E0  38 C0 00 02 */	li r6, 2
lbl_804944E4:
/* 804944E4  38 06 FF FF */	addi r0, r6, -1
/* 804944E8  38 81 00 08 */	addi r4, r1, 8
/* 804944EC  54 00 10 3A */	slwi r0, r0, 2
/* 804944F0  7D 84 00 2E */	lwzx r12, r4, r0
/* 804944F4  7D 89 03 A6 */	mtctr r12
/* 804944F8  4E 80 04 21 */	bctrl 
/* 804944FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494500  7C 08 03 A6 */	mtlr r0
/* 80494504  38 21 00 10 */	addi r1, r1, 0x10
/* 80494508  4E 80 00 20 */	blr 
