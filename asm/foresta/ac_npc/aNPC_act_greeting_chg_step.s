lbl_80532CD0:
/* 80532CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532CD4  7C 08 02 A6 */	mflr r0
/* 80532CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532CDC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80532CE0  28 00 00 01 */	cmplwi r0, 1
/* 80532CE4  40 82 00 0C */	bne lbl_80532CF0
/* 80532CE8  38 00 00 50 */	li r0, 0x50
/* 80532CEC  98 03 09 35 */	stb r0, 0x935(r3)
lbl_80532CF0:
/* 80532CF0  3C A0 80 6A */	lis r5, act_idx_2708@ha /* 0x806A2588@ha */
/* 80532CF4  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 80532CF8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80532CFC  38 85 25 88 */	addi r4, r5, act_idx_2708@l /* 0x806A2588@l */
/* 80532D00  7C 84 00 AE */	lbzx r4, r4, r0
/* 80532D04  4B FF D0 29 */	bl aNPC_setupAction
/* 80532D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532D0C  7C 08 03 A6 */	mtlr r0
/* 80532D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80532D14  4E 80 00 20 */	blr 
