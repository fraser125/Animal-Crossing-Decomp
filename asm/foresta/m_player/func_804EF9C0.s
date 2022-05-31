lbl_804EF9C0:
/* 804EF9C0  81 24 00 00 */	lwz r9, 0(r4)
/* 804EF9C4  80 04 00 04 */	lwz r0, 4(r4)
/* 804EF9C8  91 23 00 00 */	stw r9, 0(r3)
/* 804EF9CC  90 03 00 04 */	stw r0, 4(r3)
/* 804EF9D0  80 04 00 08 */	lwz r0, 8(r4)
/* 804EF9D4  90 03 00 08 */	stw r0, 8(r3)
/* 804EF9D8  B0 A3 00 0C */	sth r5, 0xc(r3)
/* 804EF9DC  90 E3 00 10 */	stw r7, 0x10(r3)
/* 804EF9E0  91 03 00 14 */	stw r8, 0x14(r3)
/* 804EF9E4  B0 C3 00 0E */	sth r6, 0xe(r3)
/* 804EF9E8  4E 80 00 20 */	blr 
