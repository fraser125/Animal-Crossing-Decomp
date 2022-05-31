lbl_8040EF50:
/* 8040EF50  3C 60 80 66 */	lis r3, sprite_tbl@ha /* 0x8065F938@ha */
/* 8040EF54  38 63 F9 38 */	addi r3, r3, sprite_tbl@l /* 0x8065F938@l */
/* 8040EF58  80 63 00 04 */	lwz r3, 4(r3)
/* 8040EF5C  4E 80 00 20 */	blr 
