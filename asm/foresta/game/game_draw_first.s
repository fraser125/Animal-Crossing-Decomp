lbl_80404D58:
/* 80404D58  80 C3 03 20 */	lwz r6, 0x320(r3)
/* 80404D5C  3C 80 DB 06 */	lis r4, 0xdb06
/* 80404D60  3C 00 80 00 */	lis r0, 0x8000
/* 80404D64  38 A6 00 08 */	addi r5, r6, 8
/* 80404D68  90 A3 03 20 */	stw r5, 0x320(r3)
/* 80404D6C  90 86 00 00 */	stw r4, 0(r6)
/* 80404D70  90 06 00 04 */	stw r0, 4(r6)
/* 80404D74  4E 80 00 20 */	blr 
