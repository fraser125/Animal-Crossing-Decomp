lbl_8054A5D4:
/* 8054A5D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054A5D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054A5DC  3C 63 00 03 */	addis r3, r3, 3
/* 8054A5E0  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8054A5E4  60 00 00 08 */	ori r0, r0, 8
/* 8054A5E8  98 03 88 7F */	stb r0, -0x7781(r3)
/* 8054A5EC  4E 80 00 20 */	blr 
