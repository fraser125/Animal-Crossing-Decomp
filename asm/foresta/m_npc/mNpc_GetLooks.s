lbl_803CEE5C:
/* 803CEE5C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803CEE60  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803CEE64  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CEE68  38 60 00 00 */	li r3, 0
/* 803CEE6C  4C 82 00 20 */	bnelr 
/* 803CEE70  3C 60 80 66 */	lis r3, npc_looks_table@ha /* 0x8065A388@ha */
/* 803CEE74  54 80 05 3E */	clrlwi r0, r4, 0x14
/* 803CEE78  38 63 A3 88 */	addi r3, r3, npc_looks_table@l /* 0x8065A388@l */
/* 803CEE7C  7C 63 00 AE */	lbzx r3, r3, r0
/* 803CEE80  4E 80 00 20 */	blr 
