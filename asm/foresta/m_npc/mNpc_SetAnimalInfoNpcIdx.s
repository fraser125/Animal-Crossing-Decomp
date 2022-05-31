lbl_803D2700:
/* 803D2700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D2704  7C 08 02 A6 */	mflr r0
/* 803D2708  2C 04 00 00 */	cmpwi r4, 0
/* 803D270C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D2710  41 80 00 34 */	blt lbl_803D2744
/* 803D2714  2C 04 00 EC */	cmpwi r4, 0xec
/* 803D2718  40 80 00 2C */	bge lbl_803D2744
/* 803D271C  3C C0 80 66 */	lis r6, npc_looks_table@ha /* 0x8065A388@ha */
/* 803D2720  3C A0 80 97 */	lis r5, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803D2724  38 E6 A3 88 */	addi r7, r6, npc_looks_table@l /* 0x8065A388@l */
/* 803D2728  60 88 E0 00 */	ori r8, r4, 0xe000
/* 803D272C  1C C4 00 06 */	mulli r6, r4, 6
/* 803D2730  38 05 CC 90 */	addi r0, r5, data_8096CC90@l /* 0x8096CC90@l */
/* 803D2734  7C A7 20 AE */	lbzx r5, r7, r4
/* 803D2738  55 04 04 3E */	clrlwi r4, r8, 0x10
/* 803D273C  7C C0 32 14 */	add r6, r0, r6
/* 803D2740  4B FF C7 45 */	bl mNpc_SetDefAnimalInfo
lbl_803D2744:
/* 803D2744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D2748  7C 08 03 A6 */	mtlr r0
/* 803D274C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D2750  4E 80 00 20 */	blr 
