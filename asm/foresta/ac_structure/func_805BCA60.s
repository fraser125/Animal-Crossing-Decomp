lbl_805BCA60:
/* 805BCA60  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805BCA64  7C 60 07 34 */	extsh r0, r3
/* 805BCA68  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805BCA6C  3C 80 80 6C */	lis r4, pal_adrs_table@ha /* 0x806C6B24@ha */
/* 805BCA70  3C A5 00 02 */	addis r5, r5, 2
/* 805BCA74  54 00 10 3A */	slwi r0, r0, 2
/* 805BCA78  38 64 6B 24 */	addi r3, r4, pal_adrs_table@l /* 0x806C6B24@l */
/* 805BCA7C  80 85 61 10 */	lwz r4, 0x6110(r5)
/* 805BCA80  20 84 00 03 */	subfic r4, r4, 3
/* 805BCA84  7C 84 00 34 */	cntlzw r4, r4
/* 805BCA88  54 84 E8 FA */	rlwinm r4, r4, 0x1d, 3, 0x1d
/* 805BCA8C  7C 63 20 2E */	lwzx r3, r3, r4
/* 805BCA90  7C 63 00 2E */	lwzx r3, r3, r0
/* 805BCA94  4E 80 00 20 */	blr 
