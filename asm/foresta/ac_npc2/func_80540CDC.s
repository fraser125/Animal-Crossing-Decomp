lbl_80540CDC:
/* 80540CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540CE0  7C 08 02 A6 */	mflr r0
/* 80540CE4  3C A0 80 6A */	lis r5, act_idx_2449@ha /* 0x806A3CEC@ha */
/* 80540CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540CEC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80540CF0  98 83 07 F6 */	stb r4, 0x7f6(r3)
/* 80540CF4  38 85 3C EC */	addi r4, r5, act_idx_2449@l /* 0x806A3CEC@l */
/* 80540CF8  7C 84 00 AE */	lbzx r4, r4, r0
/* 80540CFC  4B FF D0 55 */	bl aNPC_setupAction
/* 80540D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540D04  7C 08 03 A6 */	mtlr r0
/* 80540D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80540D0C  4E 80 00 20 */	blr 
