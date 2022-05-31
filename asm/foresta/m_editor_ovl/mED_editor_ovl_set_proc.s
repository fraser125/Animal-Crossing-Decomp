lbl_805DC1A8:
/* 805DC1A8  3C 80 80 5E */	lis r4, mED_editor_ovl_move@ha /* 0x805DABDC@ha */
/* 805DC1AC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC1B0  38 04 AB DC */	addi r0, r4, mED_editor_ovl_move@l /* 0x805DABDC@l */
/* 805DC1B4  3C 60 80 5E */	lis r3, mED_editor_ovl_draw@ha /* 0x805DC108@ha */
/* 805DC1B8  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805DC1BC  38 03 C1 08 */	addi r0, r3, mED_editor_ovl_draw@l /* 0x805DC108@l */
/* 805DC1C0  90 05 09 10 */	stw r0, 0x910(r5)
/* 805DC1C4  4E 80 00 20 */	blr 
