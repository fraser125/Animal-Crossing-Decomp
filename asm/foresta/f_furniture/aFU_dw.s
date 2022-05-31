lbl_8062EE1C:
/* 8062EE1C  28 03 00 00 */	cmplwi r3, 0
/* 8062EE20  4D 82 00 20 */	beqlr 
/* 8062EE24  80 E5 00 00 */	lwz r7, 0(r5)
/* 8062EE28  3C 80 80 6D */	lis r4, aFU_data@ha /* 0x806D58A0@ha */
/* 8062EE2C  A0 63 00 00 */	lhz r3, 0(r3)
/* 8062EE30  3C A0 DE 00 */	lis r5, 0xde00
/* 8062EE34  80 C7 02 D0 */	lwz r6, 0x2d0(r7)
/* 8062EE38  38 84 58 A0 */	addi r4, r4, aFU_data@l /* 0x806D58A0@l */
/* 8062EE3C  38 63 FC BE */	addi r3, r3, -834
/* 8062EE40  38 06 00 08 */	addi r0, r6, 8
/* 8062EE44  90 07 02 D0 */	stw r0, 0x2d0(r7)
/* 8062EE48  54 60 1E 38 */	rlwinm r0, r3, 3, 0x18, 0x1c
/* 8062EE4C  7C 64 02 14 */	add r3, r4, r0
/* 8062EE50  90 A6 00 00 */	stw r5, 0(r6)
/* 8062EE54  7C 04 00 2E */	lwzx r0, r4, r0
/* 8062EE58  90 06 00 04 */	stw r0, 4(r6)
/* 8062EE5C  80 87 02 E0 */	lwz r4, 0x2e0(r7)
/* 8062EE60  38 04 00 08 */	addi r0, r4, 8
/* 8062EE64  90 07 02 E0 */	stw r0, 0x2e0(r7)
/* 8062EE68  90 A4 00 00 */	stw r5, 0(r4)
/* 8062EE6C  80 03 00 04 */	lwz r0, 4(r3)
/* 8062EE70  90 04 00 04 */	stw r0, 4(r4)
/* 8062EE74  4E 80 00 20 */	blr 
