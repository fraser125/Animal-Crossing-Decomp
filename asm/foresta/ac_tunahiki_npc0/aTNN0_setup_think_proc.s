lbl_8058ED90:
/* 8058ED90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058ED94  7C 08 02 A6 */	mflr r0
/* 8058ED98  3C C0 80 6C */	lis r6, data_806C25B0@ha /* 0x806C25B0@ha */
/* 8058ED9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EDA0  39 06 25 B0 */	addi r8, r6, data_806C25B0@l /* 0x806C25B0@l */
/* 8058EDA4  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8058EDA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058EDAC  1C 00 00 05 */	mulli r0, r0, 5
/* 8058EDB0  39 28 00 60 */	addi r9, r8, 0x60
/* 8058EDB4  98 A3 09 A6 */	stb r5, 0x9a6(r3)
/* 8058EDB8  38 E8 00 6C */	addi r7, r8, 0x6c
/* 8058EDBC  7D 29 02 14 */	add r9, r9, r0
/* 8058EDC0  38 C8 00 7C */	addi r6, r8, 0x7c
/* 8058EDC4  88 09 00 00 */	lbz r0, 0(r9)
/* 8058EDC8  38 A8 00 74 */	addi r5, r8, 0x74
/* 8058EDCC  7C 7F 1B 78 */	mr r31, r3
/* 8058EDD0  54 00 10 3A */	slwi r0, r0, 2
/* 8058EDD4  7C 07 00 2E */	lwzx r0, r7, r0
/* 8058EDD8  90 03 09 94 */	stw r0, 0x994(r3)
/* 8058EDDC  88 09 00 02 */	lbz r0, 2(r9)
/* 8058EDE0  54 00 10 3A */	slwi r0, r0, 2
/* 8058EDE4  7C 06 00 2E */	lwzx r0, r6, r0
/* 8058EDE8  90 03 09 64 */	stw r0, 0x964(r3)
/* 8058EDEC  88 09 00 03 */	lbz r0, 3(r9)
/* 8058EDF0  98 03 09 A8 */	stb r0, 0x9a8(r3)
/* 8058EDF4  88 09 00 04 */	lbz r0, 4(r9)
/* 8058EDF8  98 03 09 A7 */	stb r0, 0x9a7(r3)
/* 8058EDFC  88 09 00 01 */	lbz r0, 1(r9)
/* 8058EE00  54 00 10 3A */	slwi r0, r0, 2
/* 8058EE04  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058EE08  7D 89 03 A6 */	mtctr r12
/* 8058EE0C  4E 80 04 21 */	bctrl 
/* 8058EE10  38 00 00 01 */	li r0, 1
/* 8058EE14  98 1F 09 A9 */	stb r0, 0x9a9(r31)
/* 8058EE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058EE20  7C 08 03 A6 */	mtlr r0
/* 8058EE24  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EE28  4E 80 00 20 */	blr 
