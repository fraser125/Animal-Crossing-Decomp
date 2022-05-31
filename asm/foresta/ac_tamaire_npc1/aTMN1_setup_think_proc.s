lbl_8058B24C:
/* 8058B24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B250  7C 08 02 A6 */	mflr r0
/* 8058B254  3C E0 80 6C */	lis r7, data_806C20B8@ha /* 0x806C20B8@ha */
/* 8058B258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B25C  39 27 20 B8 */	addi r9, r7, data_806C20B8@l /* 0x806C20B8@l */
/* 8058B260  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8058B264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B268  1C C0 00 05 */	mulli r6, r0, 5
/* 8058B26C  39 49 00 74 */	addi r10, r9, 0x74
/* 8058B270  98 A3 09 AA */	stb r5, 0x9aa(r3)
/* 8058B274  38 E9 00 AC */	addi r7, r9, 0xac
/* 8058B278  7D 4A 32 14 */	add r10, r10, r6
/* 8058B27C  38 00 00 01 */	li r0, 1
/* 8058B280  89 0A 00 00 */	lbz r8, 0(r10)
/* 8058B284  38 C9 01 04 */	addi r6, r9, 0x104
/* 8058B288  38 A9 00 D4 */	addi r5, r9, 0xd4
/* 8058B28C  7C 7F 1B 78 */	mr r31, r3
/* 8058B290  55 08 10 3A */	slwi r8, r8, 2
/* 8058B294  7C E7 40 2E */	lwzx r7, r7, r8
/* 8058B298  90 E3 09 94 */	stw r7, 0x994(r3)
/* 8058B29C  88 EA 00 02 */	lbz r7, 2(r10)
/* 8058B2A0  54 E7 10 3A */	slwi r7, r7, 2
/* 8058B2A4  7C C6 38 2E */	lwzx r6, r6, r7
/* 8058B2A8  90 C3 09 64 */	stw r6, 0x964(r3)
/* 8058B2AC  88 CA 00 03 */	lbz r6, 3(r10)
/* 8058B2B0  98 C3 09 AD */	stb r6, 0x9ad(r3)
/* 8058B2B4  88 CA 00 04 */	lbz r6, 4(r10)
/* 8058B2B8  98 C3 09 AB */	stb r6, 0x9ab(r3)
/* 8058B2BC  98 03 08 BE */	stb r0, 0x8be(r3)
/* 8058B2C0  88 0A 00 01 */	lbz r0, 1(r10)
/* 8058B2C4  54 00 10 3A */	slwi r0, r0, 2
/* 8058B2C8  7D 85 00 2E */	lwzx r12, r5, r0
/* 8058B2CC  7D 89 03 A6 */	mtctr r12
/* 8058B2D0  4E 80 04 21 */	bctrl 
/* 8058B2D4  38 00 00 01 */	li r0, 1
/* 8058B2D8  98 1F 09 AE */	stb r0, 0x9ae(r31)
/* 8058B2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B2E4  7C 08 03 A6 */	mtlr r0
/* 8058B2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B2EC  4E 80 00 20 */	blr 
