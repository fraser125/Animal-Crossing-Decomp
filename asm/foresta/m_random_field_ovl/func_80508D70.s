lbl_80508D70:
/* 80508D70  3C 80 80 6A */	lis r4, system_block_info@ha /* 0x8069EC74@ha */
/* 80508D74  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 80508D78  38 64 EC 74 */	addi r3, r4, system_block_info@l /* 0x8069EC74@l */
/* 80508D7C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80508D80  4E 80 00 20 */	blr 
