lbl_803CEF88:
/* 803CEF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEF8C  7C 08 02 A6 */	mflr r0
/* 803CEF90  7C A7 2B 78 */	mr r7, r5
/* 803CEF94  54 86 05 3E */	clrlwi r6, r4, 0x14
/* 803CEF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEF9C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803CEFA0  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CEFA4  40 82 00 1C */	bne lbl_803CEFC0
/* 803CEFA8  1C 06 00 06 */	mulli r0, r6, 6
/* 803CEFAC  3C A0 80 66 */	lis r5, npc_looks_table@ha /* 0x8065A388@ha */
/* 803CEFB0  38 A5 A3 88 */	addi r5, r5, npc_looks_table@l /* 0x8065A388@l */
/* 803CEFB4  7C A5 30 AE */	lbzx r5, r5, r6
/* 803CEFB8  7C C7 02 14 */	add r6, r7, r0
/* 803CEFBC  4B FF FE C9 */	bl mNpc_SetDefAnimalInfo
lbl_803CEFC0:
/* 803CEFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEFC4  7C 08 03 A6 */	mtlr r0
/* 803CEFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEFCC  4E 80 00 20 */	blr 
