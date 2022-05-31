lbl_804BF9A8:
/* 804BF9A8  80 E3 00 00 */	lwz r7, 0(r3)
/* 804BF9AC  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804BF9B0  3C C0 E7 00 */	lis r6, 0xe700
/* 804BF9B4  38 A0 00 00 */	li r5, 0
/* 804BF9B8  38 07 00 08 */	addi r0, r7, 8
/* 804BF9BC  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 804BF9C0  90 03 00 00 */	stw r0, 0(r3)
/* 804BF9C4  38 00 FF FF */	li r0, -1
/* 804BF9C8  90 C7 00 00 */	stw r6, 0(r7)
/* 804BF9CC  90 A7 00 04 */	stw r5, 4(r7)
/* 804BF9D0  80 C3 00 00 */	lwz r6, 0(r3)
/* 804BF9D4  38 A6 00 08 */	addi r5, r6, 8
/* 804BF9D8  90 A3 00 00 */	stw r5, 0(r3)
/* 804BF9DC  38 60 00 01 */	li r3, 1
/* 804BF9E0  90 86 00 00 */	stw r4, 0(r6)
/* 804BF9E4  90 06 00 04 */	stw r0, 4(r6)
/* 804BF9E8  4E 80 00 20 */	blr 
