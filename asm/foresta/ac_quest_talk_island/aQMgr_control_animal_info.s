lbl_8048EA0C:
/* 8048EA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EA10  7C 08 02 A6 */	mflr r0
/* 8048EA14  3C 80 80 64 */	lis r4, lit_841@ha /* 0x80644C3C@ha */
/* 8048EA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EA1C  38 A4 4C 3C */	addi r5, r4, lit_841@l /* 0x80644C3C@l */
/* 8048EA20  A0 C3 01 B6 */	lhz r6, 0x1b6(r3)
/* 8048EA24  80 85 00 00 */	lwz r4, 0(r5)
/* 8048EA28  80 05 00 04 */	lwz r0, 4(r5)
/* 8048EA2C  2C 06 00 00 */	cmpwi r6, 0
/* 8048EA30  90 81 00 08 */	stw r4, 8(r1)
/* 8048EA34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8048EA38  40 81 00 0C */	ble lbl_8048EA44
/* 8048EA3C  2C 06 00 02 */	cmpwi r6, 2
/* 8048EA40  40 81 00 08 */	ble lbl_8048EA48
lbl_8048EA44:
/* 8048EA44  38 C0 00 02 */	li r6, 2
lbl_8048EA48:
/* 8048EA48  38 06 FF FF */	addi r0, r6, -1
/* 8048EA4C  38 81 00 08 */	addi r4, r1, 8
/* 8048EA50  54 00 10 3A */	slwi r0, r0, 2
/* 8048EA54  7D 84 00 2E */	lwzx r12, r4, r0
/* 8048EA58  7D 89 03 A6 */	mtctr r12
/* 8048EA5C  4E 80 04 21 */	bctrl 
/* 8048EA60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EA64  7C 08 03 A6 */	mtlr r0
/* 8048EA68  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EA6C  4E 80 00 20 */	blr 
