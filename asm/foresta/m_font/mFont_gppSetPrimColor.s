lbl_803AF8F8:
/* 803AF8F8  80 E3 00 00 */	lwz r7, 0(r3)
/* 803AF8FC  3C 00 FA 00 */	lis r0, 0xfa00
/* 803AF900  7C E8 3B 78 */	mr r8, r7
/* 803AF904  38 E7 00 08 */	addi r7, r7, 8
/* 803AF908  90 08 00 00 */	stw r0, 0(r8)
/* 803AF90C  88 04 00 01 */	lbz r0, 1(r4)
/* 803AF910  88 A4 00 00 */	lbz r5, 0(r4)
/* 803AF914  88 C4 00 02 */	lbz r6, 2(r4)
/* 803AF918  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 803AF91C  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 803AF920  88 84 00 03 */	lbz r4, 3(r4)
/* 803AF924  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 803AF928  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 803AF92C  90 08 00 04 */	stw r0, 4(r8)
/* 803AF930  90 E3 00 00 */	stw r7, 0(r3)
/* 803AF934  4E 80 00 20 */	blr 
