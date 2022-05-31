lbl_8039008C:
/* 8039008C  3C 80 80 65 */	lis r4, l_attribute_action_info@ha /* 0x80650DE8@ha */
/* 80390090  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 80390094  38 64 0D E8 */	addi r3, r4, l_attribute_action_info@l /* 0x80650DE8@l */
/* 80390098  7C 03 00 AE */	lbzx r0, r3, r0
/* 8039009C  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 803900A0  4E 80 00 20 */	blr 
