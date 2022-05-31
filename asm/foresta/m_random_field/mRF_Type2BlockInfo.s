lbl_803E4A58:
/* 803E4A58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803E4A5C  28 00 00 6C */	cmplwi r0, 0x6c
/* 803E4A60  40 80 00 18 */	bge lbl_803E4A78
/* 803E4A64  3C 80 80 66 */	lis r4, data_8065BF98@ha /* 0x8065BF98@ha */
/* 803E4A68  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 803E4A6C  38 64 BF 98 */	addi r3, r4, data_8065BF98@l /* 0x8065BF98@l */
/* 803E4A70  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E4A74  4E 80 00 20 */	blr 
lbl_803E4A78:
/* 803E4A78  38 60 00 00 */	li r3, 0
/* 803E4A7C  4E 80 00 20 */	blr 
