lbl_803BDE5C:
/* 803BDE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BDE60  7C 08 02 A6 */	mflr r0
/* 803BDE64  3C C0 80 65 */	lis r6, data_806565C0@ha /* 0x806565C0@ha */
/* 803BDE68  7C 65 1B 78 */	mr r5, r3
/* 803BDE6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BDE70  38 00 00 1C */	li r0, 0x1c
/* 803BDE74  38 81 00 08 */	addi r4, r1, 8
/* 803BDE78  38 C6 65 C0 */	addi r6, r6, data_806565C0@l /* 0x806565C0@l */
/* 803BDE7C  7C 09 03 A6 */	mtctr r0
lbl_803BDE80:
/* 803BDE80  88 05 00 00 */	lbz r0, 0(r5)
/* 803BDE84  38 A5 00 01 */	addi r5, r5, 1
/* 803BDE88  7C 06 00 AE */	lbzx r0, r6, r0
/* 803BDE8C  98 04 00 00 */	stb r0, 0(r4)
/* 803BDE90  38 84 00 01 */	addi r4, r4, 1
/* 803BDE94  42 00 FF EC */	bdnz lbl_803BDE80
/* 803BDE98  38 81 00 08 */	addi r4, r1, 8
/* 803BDE9C  38 A0 00 1C */	li r5, 0x1c
/* 803BDEA0  4B C4 55 F1 */	bl memcpy
/* 803BDEA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BDEA8  7C 08 03 A6 */	mtlr r0
/* 803BDEAC  38 21 00 30 */	addi r1, r1, 0x30
/* 803BDEB0  4E 80 00 20 */	blr 
