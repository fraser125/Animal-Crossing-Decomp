lbl_8053F5DC:
/* 8053F5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F5E0  7C 08 02 A6 */	mflr r0
/* 8053F5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F5E8  98 83 07 FC */	stb r4, 0x7fc(r3)
/* 8053F5EC  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8053F5F0  28 00 00 01 */	cmplwi r0, 1
/* 8053F5F4  40 82 00 18 */	bne lbl_8053F60C
/* 8053F5F8  3C A0 80 6A */	lis r5, walk_action@ha /* 0x806A3B60@ha */
/* 8053F5FC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8053F600  38 85 3B 60 */	addi r4, r5, walk_action@l /* 0x806A3B60@l */
/* 8053F604  7C 84 00 AE */	lbzx r4, r4, r0
/* 8053F608  48 00 00 14 */	b lbl_8053F61C
lbl_8053F60C:
/* 8053F60C  3C A0 80 6A */	lis r5, run_action@ha /* 0x806A3B6C@ha */
/* 8053F610  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8053F614  38 85 3B 6C */	addi r4, r5, run_action@l /* 0x806A3B6C@l */
/* 8053F618  7C 84 00 AE */	lbzx r4, r4, r0
lbl_8053F61C:
/* 8053F61C  4B FF E7 35 */	bl aNPC_setupAction
/* 8053F620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F624  7C 08 03 A6 */	mtlr r0
/* 8053F628  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F62C  4E 80 00 20 */	blr 
