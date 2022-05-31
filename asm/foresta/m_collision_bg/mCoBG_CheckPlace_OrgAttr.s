lbl_8038FEC4:
/* 8038FEC4  3C 80 80 65 */	lis r4, l_attribute_action_info@ha /* 0x80650DE8@ha */
/* 8038FEC8  38 84 0D E8 */	addi r4, r4, l_attribute_action_info@l /* 0x80650DE8@l */
/* 8038FECC  7C 04 18 AE */	lbzx r0, r4, r3
/* 8038FED0  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 8038FED4  4E 80 00 20 */	blr 
