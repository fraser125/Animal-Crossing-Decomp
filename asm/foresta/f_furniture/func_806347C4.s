lbl_806347C4:
/* 806347C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806347C8  7C 08 02 A6 */	mflr r0
/* 806347CC  38 80 00 20 */	li r4, 0x20
/* 806347D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806347D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806347D8  7C 7F 1B 78 */	mr r31, r3
/* 806347DC  38 60 00 20 */	li r3, 0x20
/* 806347E0  4B D8 7C 49 */	bl func_803BC428
/* 806347E4  90 7F 08 50 */	stw r3, 0x850(r31)
/* 806347E8  3C 60 80 6E */	lis r3, int_nog_shop1_off_pal@ha /* 0x806D8480@ha */
/* 806347EC  3C A0 80 6E */	lis r5, int_nog_shop1_on_pal@ha /* 0x806D8460@ha */
/* 806347F0  7F E6 FB 78 */	mr r6, r31
/* 806347F4  38 83 84 80 */	addi r4, r3, int_nog_shop1_off_pal@l /* 0x806D8480@l */
/* 806347F8  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 806347FC  38 A5 84 60 */	addi r5, r5, int_nog_shop1_on_pal@l /* 0x806D8460@l */
/* 80634800  4B FF A2 BD */	bl fFTR_MorphHousepaletteCt
/* 80634804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063480C  7C 08 03 A6 */	mtlr r0
/* 80634810  38 21 00 10 */	addi r1, r1, 0x10
/* 80634814  4E 80 00 20 */	blr 
