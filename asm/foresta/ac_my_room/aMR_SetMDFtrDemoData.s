lbl_804812A8:
/* 804812A8  38 E0 00 01 */	li r7, 1
/* 804812AC  38 C0 00 00 */	li r6, 0
/* 804812B0  B0 E4 08 40 */	sth r7, 0x840(r4)
/* 804812B4  38 00 00 17 */	li r0, 0x17
/* 804812B8  B0 C3 04 04 */	sth r6, 0x404(r3)
/* 804812BC  B0 03 03 EE */	sth r0, 0x3ee(r3)
/* 804812C0  B0 E3 03 F8 */	sth r7, 0x3f8(r3)
/* 804812C4  80 05 00 04 */	lwz r0, 4(r5)
/* 804812C8  B0 03 03 FA */	sth r0, 0x3fa(r3)
/* 804812CC  B0 C3 04 00 */	sth r6, 0x400(r3)
/* 804812D0  4E 80 00 20 */	blr 
