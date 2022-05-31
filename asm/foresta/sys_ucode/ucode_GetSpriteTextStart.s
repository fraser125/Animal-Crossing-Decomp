lbl_8040EF40:
/* 8040EF40  3C 60 80 66 */	lis r3, sprite_tbl@ha /* 0x8065F938@ha */
/* 8040EF44  38 63 F9 38 */	addi r3, r3, sprite_tbl@l /* 0x8065F938@l */
/* 8040EF48  80 63 00 00 */	lwz r3, 0(r3)
/* 8040EF4C  4E 80 00 20 */	blr 
