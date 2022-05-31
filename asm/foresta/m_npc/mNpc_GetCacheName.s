lbl_803D189C:
/* 803D189C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D18A0  7C 08 02 A6 */	mflr r0
/* 803D18A4  3C C0 81 17 */	lis r6, l_npc_name_cache@ha /* 0x8116C520@ha */
/* 803D18A8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803D18AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D18B0  38 E0 00 00 */	li r7, 0
/* 803D18B4  A4 06 C5 20 */	lhzu r0, l_npc_name_cache@l(r6)  /* 0x8116C520@l */
/* 803D18B8  7C 04 00 40 */	cmplw r4, r0
/* 803D18BC  40 82 00 28 */	bne lbl_803D18E4
/* 803D18C0  28 03 00 00 */	cmplwi r3, 0
/* 803D18C4  41 82 00 20 */	beq lbl_803D18E4
/* 803D18C8  88 06 00 0A */	lbz r0, 0xa(r6)
/* 803D18CC  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 803D18D0  7C 04 00 40 */	cmplw r4, r0
/* 803D18D4  40 82 00 10 */	bne lbl_803D18E4
/* 803D18D8  38 86 00 02 */	addi r4, r6, 2
/* 803D18DC  48 00 E5 E1 */	bl mPr_CopyPlayerName
/* 803D18E0  38 E0 00 01 */	li r7, 1
lbl_803D18E4:
/* 803D18E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D18E8  7C E3 3B 78 */	mr r3, r7
/* 803D18EC  7C 08 03 A6 */	mtlr r0
/* 803D18F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D18F4  4E 80 00 20 */	blr 
