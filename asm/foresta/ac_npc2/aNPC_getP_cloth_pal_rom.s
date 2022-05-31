lbl_8053AD78:
/* 8053AD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053AD7C  7C 08 02 A6 */	mflr r0
/* 8053AD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053AD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053AD88  7C 7F 1B 78 */	mr r31, r3
/* 8053AD8C  38 60 00 09 */	li r3, 9
/* 8053AD90  4B AC BE 45 */	bl JW_GetAramAddress
/* 8053AD94  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8053AD98  38 00 00 00 */	li r0, 0
/* 8053AD9C  28 05 24 00 */	cmplwi r5, 0x2400
/* 8053ADA0  41 80 00 10 */	blt lbl_8053ADB0
/* 8053ADA4  28 05 24 FF */	cmplwi r5, 0x24ff
/* 8053ADA8  40 80 00 08 */	bge lbl_8053ADB0
/* 8053ADAC  38 00 00 01 */	li r0, 1
lbl_8053ADB0:
/* 8053ADB0  20 80 00 00 */	subfic r4, r0, 0
/* 8053ADB4  38 05 DC 00 */	addi r0, r5, -9216
/* 8053ADB8  7C 84 21 10 */	subfe r4, r4, r4
/* 8053ADBC  7C 00 20 38 */	and r0, r0, r4
/* 8053ADC0  54 00 28 34 */	slwi r0, r0, 5
/* 8053ADC4  7C 63 02 14 */	add r3, r3, r0
/* 8053ADC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053ADCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053ADD0  7C 08 03 A6 */	mtlr r0
/* 8053ADD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053ADD8  4E 80 00 20 */	blr 
