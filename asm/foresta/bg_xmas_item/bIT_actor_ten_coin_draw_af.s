lbl_804C6DC0:
/* 804C6DC0  80 E3 00 00 */	lwz r7, 0(r3)
/* 804C6DC4  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804C6DC8  3C C0 E7 00 */	lis r6, 0xe700
/* 804C6DCC  38 A0 00 00 */	li r5, 0
/* 804C6DD0  38 07 00 08 */	addi r0, r7, 8
/* 804C6DD4  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 804C6DD8  90 03 00 00 */	stw r0, 0(r3)
/* 804C6DDC  38 00 FF FF */	li r0, -1
/* 804C6DE0  90 C7 00 00 */	stw r6, 0(r7)
/* 804C6DE4  90 A7 00 04 */	stw r5, 4(r7)
/* 804C6DE8  80 C3 00 00 */	lwz r6, 0(r3)
/* 804C6DEC  38 A6 00 08 */	addi r5, r6, 8
/* 804C6DF0  90 A3 00 00 */	stw r5, 0(r3)
/* 804C6DF4  38 60 00 01 */	li r3, 1
/* 804C6DF8  90 86 00 00 */	stw r4, 0(r6)
/* 804C6DFC  90 06 00 04 */	stw r0, 4(r6)
/* 804C6E00  4E 80 00 20 */	blr 
