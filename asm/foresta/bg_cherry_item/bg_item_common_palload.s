lbl_804B0E58:
/* 804B0E58  38 00 00 09 */	li r0, 9
/* 804B0E5C  39 00 00 00 */	li r8, 0
/* 804B0E60  38 A0 00 00 */	li r5, 0
/* 804B0E64  7C 09 03 A6 */	mtctr r0
lbl_804B0E68:
/* 804B0E68  80 E3 00 00 */	lwz r7, 0(r3)
/* 804B0E6C  55 00 83 1E */	rlwinm r0, r8, 0x10, 0xc, 0xf
/* 804B0E70  64 00 F0 80 */	oris r0, r0, 0xf080
/* 804B0E74  39 08 00 01 */	addi r8, r8, 1
/* 804B0E78  38 C7 00 08 */	addi r6, r7, 8
/* 804B0E7C  90 C3 00 00 */	stw r6, 0(r3)
/* 804B0E80  60 00 40 10 */	ori r0, r0, 0x4010
/* 804B0E84  90 07 00 00 */	stw r0, 0(r7)
/* 804B0E88  7C 04 28 2E */	lwzx r0, r4, r5
/* 804B0E8C  38 A5 00 04 */	addi r5, r5, 4
/* 804B0E90  90 07 00 04 */	stw r0, 4(r7)
/* 804B0E94  42 00 FF D4 */	bdnz lbl_804B0E68
/* 804B0E98  4E 80 00 20 */	blr 
