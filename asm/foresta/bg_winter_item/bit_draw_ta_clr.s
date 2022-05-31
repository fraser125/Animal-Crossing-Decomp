lbl_804BEFCC:
/* 804BEFCC  80 C3 00 00 */	lwz r6, 0(r3)
/* 804BEFD0  3C A0 D5 02 */	lis r5, 0xd502
/* 804BEFD4  38 80 00 00 */	li r4, 0
/* 804BEFD8  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 804BEFDC  38 03 00 08 */	addi r0, r3, 8
/* 804BEFE0  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 804BEFE4  90 A3 00 00 */	stw r5, 0(r3)
/* 804BEFE8  90 83 00 04 */	stw r4, 4(r3)
/* 804BEFEC  80 66 03 00 */	lwz r3, 0x300(r6)
/* 804BEFF0  38 03 00 08 */	addi r0, r3, 8
/* 804BEFF4  90 06 03 00 */	stw r0, 0x300(r6)
/* 804BEFF8  90 A3 00 00 */	stw r5, 0(r3)
/* 804BEFFC  90 83 00 04 */	stw r4, 4(r3)
/* 804BF000  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 804BF004  38 03 00 08 */	addi r0, r3, 8
/* 804BF008  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 804BF00C  90 A3 00 00 */	stw r5, 0(r3)
/* 804BF010  90 83 00 04 */	stw r4, 4(r3)
/* 804BF014  4E 80 00 20 */	blr 
