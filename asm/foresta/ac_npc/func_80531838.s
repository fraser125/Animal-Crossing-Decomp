lbl_80531838:
/* 80531838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053183C  7C 08 02 A6 */	mflr r0
/* 80531840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531844  98 83 07 FC */	stb r4, 0x7fc(r3)
/* 80531848  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8053184C  28 00 00 01 */	cmplwi r0, 1
/* 80531850  40 82 00 18 */	bne lbl_80531868
/* 80531854  3C A0 80 6A */	lis r5, aNPC_walk_action@ha /* 0x806A2474@ha */
/* 80531858  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8053185C  38 85 24 74 */	addi r4, r5, aNPC_walk_action@l /* 0x806A2474@l */
/* 80531860  7C 84 00 AE */	lbzx r4, r4, r0
/* 80531864  48 00 00 14 */	b lbl_80531878
lbl_80531868:
/* 80531868  3C A0 80 6A */	lis r5, aNPC_run_action@ha /* 0x806A2480@ha */
/* 8053186C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80531870  38 85 24 80 */	addi r4, r5, aNPC_run_action@l /* 0x806A2480@l */
/* 80531874  7C 84 00 AE */	lbzx r4, r4, r0
lbl_80531878:
/* 80531878  4B FF E4 B5 */	bl aNPC_setupAction
/* 8053187C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531880  7C 08 03 A6 */	mtlr r0
/* 80531884  38 21 00 10 */	addi r1, r1, 0x10
/* 80531888  4E 80 00 20 */	blr 
