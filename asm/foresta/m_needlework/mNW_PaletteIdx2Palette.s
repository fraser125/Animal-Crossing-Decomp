lbl_803C9BBC:
/* 803C9BBC  3C 80 80 66 */	lis r4, mNW_needlework_pallet_table@ha /* 0x8065ACE0@ha */
/* 803C9BC0  54 60 16 BA */	rlwinm r0, r3, 2, 0x1a, 0x1d
/* 803C9BC4  38 64 AC E0 */	addi r3, r4, mNW_needlework_pallet_table@l /* 0x8065ACE0@l */
/* 803C9BC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 803C9BCC  4E 80 00 20 */	blr 
