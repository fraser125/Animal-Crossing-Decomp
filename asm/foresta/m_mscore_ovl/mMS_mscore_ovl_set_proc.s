lbl_805E8ACC:
/* 805E8ACC  3C 80 80 5E */	lis r4, mMS_mscore_ovl_move@ha /* 0x805E7EF0@ha */
/* 805E8AD0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E8AD4  38 04 7E F0 */	addi r0, r4, mMS_mscore_ovl_move@l /* 0x805E7EF0@l */
/* 805E8AD8  3C 60 80 5F */	lis r3, mMS_mscore_ovl_draw@ha /* 0x805E8A74@ha */
/* 805E8ADC  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E8AE0  38 03 8A 74 */	addi r0, r3, mMS_mscore_ovl_draw@l /* 0x805E8A74@l */
/* 805E8AE4  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E8AE8  4E 80 00 20 */	blr 
