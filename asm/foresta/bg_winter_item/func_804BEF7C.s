lbl_804BEF7C:
/* 804BEF7C  80 C3 00 00 */	lwz r6, 0(r3)
/* 804BEF80  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 804BEF84  38 A3 00 01 */	addi r5, r3, 0x0001 /* 0xD5020001@l */
/* 804BEF88  38 80 00 00 */	li r4, 0
/* 804BEF8C  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 804BEF90  38 03 00 08 */	addi r0, r3, 8
/* 804BEF94  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 804BEF98  90 A3 00 00 */	stw r5, 0(r3)
/* 804BEF9C  90 83 00 04 */	stw r4, 4(r3)
/* 804BEFA0  80 66 03 00 */	lwz r3, 0x300(r6)
/* 804BEFA4  38 03 00 08 */	addi r0, r3, 8
/* 804BEFA8  90 06 03 00 */	stw r0, 0x300(r6)
/* 804BEFAC  90 A3 00 00 */	stw r5, 0(r3)
/* 804BEFB0  90 83 00 04 */	stw r4, 4(r3)
/* 804BEFB4  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 804BEFB8  38 03 00 08 */	addi r0, r3, 8
/* 804BEFBC  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 804BEFC0  90 A3 00 00 */	stw r5, 0(r3)
/* 804BEFC4  90 83 00 04 */	stw r4, 4(r3)
/* 804BEFC8  4E 80 00 20 */	blr 
