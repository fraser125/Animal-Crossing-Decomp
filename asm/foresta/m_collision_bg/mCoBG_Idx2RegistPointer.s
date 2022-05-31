lbl_8038CEBC:
/* 8038CEBC  3C 80 81 13 */	lis r4, l_mBgMgr@ha /* 0x811371E8@ha */
/* 8038CEC0  38 84 71 E8 */	addi r4, r4, l_mBgMgr@l /* 0x811371E8@l */
/* 8038CEC4  80 04 01 00 */	lwz r0, 0x100(r4)
/* 8038CEC8  2C 00 00 00 */	cmpwi r0, 0
/* 8038CECC  41 82 00 20 */	beq lbl_8038CEEC
/* 8038CED0  2C 03 00 00 */	cmpwi r3, 0
/* 8038CED4  41 80 00 18 */	blt lbl_8038CEEC
/* 8038CED8  2C 03 00 40 */	cmpwi r3, 0x40
/* 8038CEDC  40 80 00 10 */	bge lbl_8038CEEC
/* 8038CEE0  54 60 10 3A */	slwi r0, r3, 2
/* 8038CEE4  7C 64 00 2E */	lwzx r3, r4, r0
/* 8038CEE8  4E 80 00 20 */	blr 
lbl_8038CEEC:
/* 8038CEEC  38 60 00 00 */	li r3, 0
/* 8038CEF0  4E 80 00 20 */	blr 
