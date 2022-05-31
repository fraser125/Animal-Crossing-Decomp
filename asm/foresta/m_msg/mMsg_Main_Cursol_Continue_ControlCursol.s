lbl_803C2EB8:
/* 803C2EB8  80 04 00 00 */	lwz r0, 0(r4)
/* 803C2EBC  90 03 04 20 */	stw r0, 0x420(r3)
/* 803C2EC0  80 83 04 0C */	lwz r4, 0x40c(r3)
/* 803C2EC4  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803C2EC8  41 82 00 14 */	beq lbl_803C2EDC
/* 803C2ECC  54 80 07 76 */	rlwinm r0, r4, 0, 0x1d, 0x1b
/* 803C2ED0  90 03 04 0C */	stw r0, 0x40c(r3)
/* 803C2ED4  38 60 00 01 */	li r3, 1
/* 803C2ED8  4E 80 00 20 */	blr 
lbl_803C2EDC:
/* 803C2EDC  60 80 00 08 */	ori r0, r4, 8
/* 803C2EE0  90 03 04 0C */	stw r0, 0x40c(r3)
/* 803C2EE4  38 60 00 02 */	li r3, 2
/* 803C2EE8  4E 80 00 20 */	blr 
