lbl_805255D4:
/* 805255D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805255D8  7C 08 02 A6 */	mflr r0
/* 805255DC  3C C0 80 6A */	lis r6, data_806A0C88@ha /* 0x806A0C88@ha */
/* 805255E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805255E4  39 06 0C 88 */	addi r8, r6, data_806A0C88@l /* 0x806A0C88@l */
/* 805255E8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 805255EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805255F0  1C 00 00 05 */	mulli r0, r0, 5
/* 805255F4  39 28 00 5C */	addi r9, r8, 0x5c
/* 805255F8  98 A3 09 A8 */	stb r5, 0x9a8(r3)
/* 805255FC  38 E8 00 A8 */	addi r7, r8, 0xa8
/* 80525600  7D 29 02 14 */	add r9, r9, r0
/* 80525604  38 C8 00 E4 */	addi r6, r8, 0xe4
/* 80525608  88 09 00 00 */	lbz r0, 0(r9)
/* 8052560C  38 A8 00 C8 */	addi r5, r8, 0xc8
/* 80525610  7C 7F 1B 78 */	mr r31, r3
/* 80525614  54 00 10 3A */	slwi r0, r0, 2
/* 80525618  7C 07 00 2E */	lwzx r0, r7, r0
/* 8052561C  90 03 09 94 */	stw r0, 0x994(r3)
/* 80525620  88 09 00 02 */	lbz r0, 2(r9)
/* 80525624  54 00 10 3A */	slwi r0, r0, 2
/* 80525628  7C 06 00 2E */	lwzx r0, r6, r0
/* 8052562C  90 03 09 64 */	stw r0, 0x964(r3)
/* 80525630  88 09 00 03 */	lbz r0, 3(r9)
/* 80525634  98 03 09 AB */	stb r0, 0x9ab(r3)
/* 80525638  88 09 00 04 */	lbz r0, 4(r9)
/* 8052563C  98 03 09 A9 */	stb r0, 0x9a9(r3)
/* 80525640  88 09 00 01 */	lbz r0, 1(r9)
/* 80525644  54 00 10 3A */	slwi r0, r0, 2
/* 80525648  7D 85 00 2E */	lwzx r12, r5, r0
/* 8052564C  7D 89 03 A6 */	mtctr r12
/* 80525650  4E 80 04 21 */	bctrl 
/* 80525654  38 00 00 01 */	li r0, 1
/* 80525658  98 1F 09 AC */	stb r0, 0x9ac(r31)
/* 8052565C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80525664  7C 08 03 A6 */	mtlr r0
/* 80525668  38 21 00 10 */	addi r1, r1, 0x10
/* 8052566C  4E 80 00 20 */	blr 
