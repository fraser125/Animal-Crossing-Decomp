lbl_8056A9BC:
/* 8056A9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A9C0  7C 08 02 A6 */	mflr r0
/* 8056A9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A9C8  80 03 09 A4 */	lwz r0, 0x9a4(r3)
/* 8056A9CC  2C 00 00 00 */	cmpwi r0, 0
/* 8056A9D0  40 82 00 38 */	bne lbl_8056AA08
/* 8056A9D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056A9D8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056A9DC  3C 84 00 02 */	addis r4, r4, 2
/* 8056A9E0  A0 04 65 1E */	lhz r0, 0x651e(r4)
/* 8056A9E4  28 00 30 04 */	cmplwi r0, 0x3004
/* 8056A9E8  40 82 00 20 */	bne lbl_8056AA08
/* 8056A9EC  88 04 65 20 */	lbz r0, 0x6520(r4)
/* 8056A9F0  28 00 00 01 */	cmplwi r0, 1
/* 8056A9F4  40 82 00 14 */	bne lbl_8056AA08
/* 8056A9F8  38 00 00 01 */	li r0, 1
/* 8056A9FC  38 80 00 00 */	li r4, 0
/* 8056AA00  98 03 07 C9 */	stb r0, 0x7c9(r3)
/* 8056AA04  48 00 00 08 */	b lbl_8056AA0C
lbl_8056AA08:
/* 8056AA08  38 80 00 01 */	li r4, 1
lbl_8056AA0C:
/* 8056AA0C  3C C0 80 6C */	lis r6, type@ha /* 0x806BE7F0@ha */
/* 8056AA10  3C A0 80 6C */	lis r5, request@ha /* 0x806BE7F8@ha */
/* 8056AA14  54 80 10 3A */	slwi r0, r4, 2
/* 8056AA18  7C 64 1B 78 */	mr r4, r3
/* 8056AA1C  38 66 E7 F0 */	addi r3, r6, type@l /* 0x806BE7F0@l */
/* 8056AA20  38 A5 E7 F8 */	addi r5, r5, request@l /* 0x806BE7F8@l */
/* 8056AA24  7C 63 00 2E */	lwzx r3, r3, r0
/* 8056AA28  7C A5 00 2E */	lwzx r5, r5, r0
/* 8056AA2C  4B E2 F7 31 */	bl mDemo_Request
/* 8056AA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056AA34  7C 08 03 A6 */	mtlr r0
/* 8056AA38  38 21 00 10 */	addi r1, r1, 0x10
/* 8056AA3C  4E 80 00 20 */	blr 
