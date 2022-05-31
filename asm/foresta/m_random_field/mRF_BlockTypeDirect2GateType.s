lbl_803E4B7C:
/* 803E4B7C  3C A0 80 66 */	lis r5, mRF_gate_info2@ha /* 0x8065C2D0@ha */
/* 803E4B80  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 803E4B84  38 05 C2 D0 */	addi r0, r5, mRF_gate_info2@l /* 0x8065C2D0@l */
/* 803E4B88  7C 60 1A 14 */	add r3, r0, r3
/* 803E4B8C  7C 63 20 AE */	lbzx r3, r3, r4
/* 803E4B90  4E 80 00 20 */	blr 
