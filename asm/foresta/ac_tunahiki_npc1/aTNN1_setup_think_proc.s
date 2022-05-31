lbl_8058FDE0:
/* 8058FDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FDE4  7C 08 02 A6 */	mflr r0
/* 8058FDE8  3C C0 80 6C */	lis r6, data_806C2638@ha /* 0x806C2638@ha */
/* 8058FDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FDF0  39 06 26 38 */	addi r8, r6, data_806C2638@l /* 0x806C2638@l */
/* 8058FDF4  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8058FDF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058FDFC  1C 00 00 05 */	mulli r0, r0, 5
/* 8058FE00  39 28 00 70 */	addi r9, r8, 0x70
/* 8058FE04  98 A3 09 A5 */	stb r5, 0x9a5(r3)
/* 8058FE08  38 E8 00 84 */	addi r7, r8, 0x84
/* 8058FE0C  7D 29 02 14 */	add r9, r9, r0
/* 8058FE10  38 C8 00 A4 */	addi r6, r8, 0xa4
/* 8058FE14  88 09 00 00 */	lbz r0, 0(r9)
/* 8058FE18  38 A8 00 90 */	addi r5, r8, 0x90
/* 8058FE1C  7C 7F 1B 78 */	mr r31, r3
/* 8058FE20  54 00 10 3A */	slwi r0, r0, 2
/* 8058FE24  7C 07 00 2E */	lwzx r0, r7, r0
/* 8058FE28  90 03 09 94 */	stw r0, 0x994(r3)
/* 8058FE2C  88 09 00 02 */	lbz r0, 2(r9)
/* 8058FE30  54 00 10 3A */	slwi r0, r0, 2
/* 8058FE34  7C 06 00 2E */	lwzx r0, r6, r0
/* 8058FE38  90 03 09 64 */	stw r0, 0x964(r3)
/* 8058FE3C  88 09 00 03 */	lbz r0, 3(r9)
/* 8058FE40  98 03 09 A4 */	stb r0, 0x9a4(r3)
/* 8058FE44  88 09 00 04 */	lbz r0, 4(r9)
/* 8058FE48  98 03 09 A6 */	stb r0, 0x9a6(r3)
/* 8058FE4C  88 09 00 01 */	lbz r0, 1(r9)
/* 8058FE50  54 00 10 3A */	slwi r0, r0, 2
/* 8058FE54  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058FE58  7D 89 03 A6 */	mtctr r12
/* 8058FE5C  4E 80 04 21 */	bctrl 
/* 8058FE60  38 00 00 01 */	li r0, 1
/* 8058FE64  98 1F 09 A7 */	stb r0, 0x9a7(r31)
/* 8058FE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058FE70  7C 08 03 A6 */	mtlr r0
/* 8058FE74  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FE78  4E 80 00 20 */	blr 
