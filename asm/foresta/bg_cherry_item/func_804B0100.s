lbl_804B0100:
/* 804B0100  80 C3 00 00 */	lwz r6, 0(r3)
/* 804B0104  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 804B0108  38 A3 00 01 */	addi r5, r3, 0x0001 /* 0xD5020001@l */
/* 804B010C  38 80 00 00 */	li r4, 0
/* 804B0110  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 804B0114  38 03 00 08 */	addi r0, r3, 8
/* 804B0118  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 804B011C  90 A3 00 00 */	stw r5, 0(r3)
/* 804B0120  90 83 00 04 */	stw r4, 4(r3)
/* 804B0124  80 66 03 00 */	lwz r3, 0x300(r6)
/* 804B0128  38 03 00 08 */	addi r0, r3, 8
/* 804B012C  90 06 03 00 */	stw r0, 0x300(r6)
/* 804B0130  90 A3 00 00 */	stw r5, 0(r3)
/* 804B0134  90 83 00 04 */	stw r4, 4(r3)
/* 804B0138  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 804B013C  38 03 00 08 */	addi r0, r3, 8
/* 804B0140  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 804B0144  90 A3 00 00 */	stw r5, 0(r3)
/* 804B0148  90 83 00 04 */	stw r4, 4(r3)
/* 804B014C  4E 80 00 20 */	blr 
