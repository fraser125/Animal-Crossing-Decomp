lbl_805C4CA0:
/* 805C4CA0  3C 80 80 5C */	lis r4, mBR_birthday_ovl_move@ha /* 0x805C489C@ha */
/* 805C4CA4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C4CA8  38 04 48 9C */	addi r0, r4, mBR_birthday_ovl_move@l /* 0x805C489C@l */
/* 805C4CAC  3C 60 80 5C */	lis r3, mBR_birthday_ovl_draw@ha /* 0x805C4C48@ha */
/* 805C4CB0  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805C4CB4  38 03 4C 48 */	addi r0, r3, mBR_birthday_ovl_draw@l /* 0x805C4C48@l */
/* 805C4CB8  90 05 09 10 */	stw r0, 0x910(r5)
/* 805C4CBC  4E 80 00 20 */	blr 
