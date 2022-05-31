lbl_805E7814:
/* 805E7814  3C 80 80 5E */	lis r4, mMP_map_ovl_move@ha /* 0x805E6958@ha */
/* 805E7818  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E781C  38 04 69 58 */	addi r0, r4, mMP_map_ovl_move@l /* 0x805E6958@l */
/* 805E7820  3C 60 80 5E */	lis r3, mMP_map_ovl_draw@ha /* 0x805E77BC@ha */
/* 805E7824  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E7828  38 03 77 BC */	addi r0, r3, mMP_map_ovl_draw@l /* 0x805E77BC@l */
/* 805E782C  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E7830  4E 80 00 20 */	blr 
