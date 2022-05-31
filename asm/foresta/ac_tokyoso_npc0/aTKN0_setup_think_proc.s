lbl_8058BFA0:
/* 8058BFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BFA4  7C 08 02 A6 */	mflr r0
/* 8058BFA8  3C C0 80 6C */	lis r6, data_806C21C8@ha /* 0x806C21C8@ha */
/* 8058BFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BFB0  39 06 21 C8 */	addi r8, r6, data_806C21C8@l /* 0x806C21C8@l */
/* 8058BFB4  7C A0 07 34 */	extsh r0, r5
/* 8058BFB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BFBC  1C 00 00 05 */	mulli r0, r0, 5
/* 8058BFC0  39 28 00 70 */	addi r9, r8, 0x70
/* 8058BFC4  B0 A3 09 A2 */	sth r5, 0x9a2(r3)
/* 8058BFC8  38 E8 00 98 */	addi r7, r8, 0x98
/* 8058BFCC  7D 29 02 14 */	add r9, r9, r0
/* 8058BFD0  38 C8 00 D4 */	addi r6, r8, 0xd4
/* 8058BFD4  88 09 00 00 */	lbz r0, 0(r9)
/* 8058BFD8  38 A8 00 B4 */	addi r5, r8, 0xb4
/* 8058BFDC  7C 7F 1B 78 */	mr r31, r3
/* 8058BFE0  54 00 10 3A */	slwi r0, r0, 2
/* 8058BFE4  7C 07 00 2E */	lwzx r0, r7, r0
/* 8058BFE8  90 03 09 94 */	stw r0, 0x994(r3)
/* 8058BFEC  88 09 00 02 */	lbz r0, 2(r9)
/* 8058BFF0  54 00 10 3A */	slwi r0, r0, 2
/* 8058BFF4  7C 06 00 2E */	lwzx r0, r6, r0
/* 8058BFF8  90 03 09 64 */	stw r0, 0x964(r3)
/* 8058BFFC  88 09 00 03 */	lbz r0, 3(r9)
/* 8058C000  B0 03 09 A8 */	sth r0, 0x9a8(r3)
/* 8058C004  88 09 00 04 */	lbz r0, 4(r9)
/* 8058C008  B0 03 09 A4 */	sth r0, 0x9a4(r3)
/* 8058C00C  88 09 00 01 */	lbz r0, 1(r9)
/* 8058C010  54 00 10 3A */	slwi r0, r0, 2
/* 8058C014  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058C018  7D 89 03 A6 */	mtctr r12
/* 8058C01C  4E 80 04 21 */	bctrl 
/* 8058C020  38 00 00 01 */	li r0, 1
/* 8058C024  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 8058C028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C030  7C 08 03 A6 */	mtlr r0
/* 8058C034  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C038  4E 80 00 20 */	blr 
