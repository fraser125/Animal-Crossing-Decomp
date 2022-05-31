lbl_8053AD14:
/* 8053AD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053AD18  7C 08 02 A6 */	mflr r0
/* 8053AD1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053AD20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053AD24  7C 7F 1B 78 */	mr r31, r3
/* 8053AD28  38 60 00 16 */	li r3, 0x16
/* 8053AD2C  4B AC BE A9 */	bl JW_GetAramAddress
/* 8053AD30  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8053AD34  38 00 00 00 */	li r0, 0
/* 8053AD38  28 05 24 00 */	cmplwi r5, 0x2400
/* 8053AD3C  41 80 00 10 */	blt lbl_8053AD4C
/* 8053AD40  28 05 24 FF */	cmplwi r5, 0x24ff
/* 8053AD44  40 80 00 08 */	bge lbl_8053AD4C
/* 8053AD48  38 00 00 01 */	li r0, 1
lbl_8053AD4C:
/* 8053AD4C  20 80 00 00 */	subfic r4, r0, 0
/* 8053AD50  38 05 DC 00 */	addi r0, r5, -9216
/* 8053AD54  7C 84 21 10 */	subfe r4, r4, r4
/* 8053AD58  7C 00 20 38 */	and r0, r0, r4
/* 8053AD5C  54 00 48 2C */	slwi r0, r0, 9
/* 8053AD60  7C 63 02 14 */	add r3, r3, r0
/* 8053AD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053AD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053AD6C  7C 08 03 A6 */	mtlr r0
/* 8053AD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8053AD74  4E 80 00 20 */	blr 
