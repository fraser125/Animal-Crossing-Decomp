lbl_805E8EE0:
/* 805E8EE0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E8EE4  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 805E8EE8  38 03 D6 00 */	addi r0, r3, -10752
/* 805E8EEC  80 A5 09 D0 */	lwz r5, 0x9d0(r5)
/* 805E8EF0  54 04 EF 7A */	rlwinm r4, r0, 0x1d, 0x1d, 0x1d
/* 805E8EF4  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805E8EF8  38 60 00 00 */	li r3, 0
/* 805E8EFC  7C 85 22 14 */	add r4, r5, r4
/* 805E8F00  80 84 00 14 */	lwz r4, 0x14(r4)
/* 805E8F04  7C 80 04 30 */	srw r0, r4, r0
/* 805E8F08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E8F0C  4D 82 00 20 */	beqlr 
/* 805E8F10  38 60 00 01 */	li r3, 1
/* 805E8F14  4E 80 00 20 */	blr 
