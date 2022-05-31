lbl_804B7EB0:
/* 804B7EB0  80 E3 00 00 */	lwz r7, 0(r3)
/* 804B7EB4  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804B7EB8  3C C0 E7 00 */	lis r6, 0xe700
/* 804B7EBC  38 A0 00 00 */	li r5, 0
/* 804B7EC0  38 07 00 08 */	addi r0, r7, 8
/* 804B7EC4  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 804B7EC8  90 03 00 00 */	stw r0, 0(r3)
/* 804B7ECC  38 00 FF FF */	li r0, -1
/* 804B7ED0  90 C7 00 00 */	stw r6, 0(r7)
/* 804B7ED4  90 A7 00 04 */	stw r5, 4(r7)
/* 804B7ED8  80 C3 00 00 */	lwz r6, 0(r3)
/* 804B7EDC  38 A6 00 08 */	addi r5, r6, 8
/* 804B7EE0  90 A3 00 00 */	stw r5, 0(r3)
/* 804B7EE4  38 60 00 01 */	li r3, 1
/* 804B7EE8  90 86 00 00 */	stw r4, 0(r6)
/* 804B7EEC  90 06 00 04 */	stw r0, 4(r6)
/* 804B7EF0  4E 80 00 20 */	blr 
