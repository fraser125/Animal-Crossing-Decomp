lbl_805B0D78:
/* 805B0D78  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805B0D7C  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 805B0D80  81 43 02 A8 */	lwz r10, 0x2a8(r3)
/* 805B0D84  38 C5 61 38 */	addi r6, r5, debug_mode@l /* 0x81166138@l */
/* 805B0D88  20 00 00 03 */	subfic r0, r0, 3
/* 805B0D8C  80 64 00 00 */	lwz r3, 0(r4)
/* 805B0D90  7C 09 00 34 */	cntlzw r9, r0
/* 805B0D94  3C A0 80 6C */	lis r5, edge_alpha@ha /* 0x806C54EC@ha */
/* 805B0D98  3C 80 80 6C */	lis r4, adjust_mode@ha /* 0x806C54F8@ha */
/* 805B0D9C  81 06 00 00 */	lwz r8, 0(r6)
/* 805B0DA0  80 E3 02 D0 */	lwz r7, 0x2d0(r3)
/* 805B0DA4  55 46 08 3C */	slwi r6, r10, 1
/* 805B0DA8  38 05 54 EC */	addi r0, r5, edge_alpha@l /* 0x806C54EC@l */
/* 805B0DAC  55 45 18 38 */	slwi r5, r10, 3
/* 805B0DB0  38 84 54 F8 */	addi r4, r4, adjust_mode@l /* 0x806C54F8@l */
/* 805B0DB4  55 2A D9 7E */	srwi r10, r9, 5
/* 805B0DB8  7C C0 32 14 */	add r6, r0, r6
/* 805B0DBC  55 20 E8 FA */	rlwinm r0, r9, 0x1d, 3, 0x1d
/* 805B0DC0  7C A4 2A 14 */	add r5, r4, r5
/* 805B0DC4  A9 28 18 D6 */	lha r9, 0x18d6(r8)
/* 805B0DC8  7D 06 50 AE */	lbzx r8, r6, r10
/* 805B0DCC  38 87 00 08 */	addi r4, r7, 8
/* 805B0DD0  7C 05 00 2E */	lwzx r0, r5, r0
/* 805B0DD4  38 C0 00 00 */	li r6, 0
/* 805B0DD8  7D 09 42 14 */	add r8, r9, r8
/* 805B0DDC  3C A0 CE 00 */	lis r5, 0xce00
/* 805B0DE0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B0DE4  90 83 02 D0 */	stw r4, 0x2d0(r3)
/* 805B0DE8  64 09 D5 02 */	oris r9, r0, 0xd502
/* 805B0DEC  55 08 06 3E */	clrlwi r8, r8, 0x18
/* 805B0DF0  91 27 00 00 */	stw r9, 0(r7)
/* 805B0DF4  90 C7 00 04 */	stw r6, 4(r7)
/* 805B0DF8  80 83 03 00 */	lwz r4, 0x300(r3)
/* 805B0DFC  38 04 00 08 */	addi r0, r4, 8
/* 805B0E00  90 03 03 00 */	stw r0, 0x300(r3)
/* 805B0E04  91 24 00 00 */	stw r9, 0(r4)
/* 805B0E08  90 C4 00 04 */	stw r6, 4(r4)
/* 805B0E0C  80 83 02 D0 */	lwz r4, 0x2d0(r3)
/* 805B0E10  38 04 00 08 */	addi r0, r4, 8
/* 805B0E14  90 03 02 D0 */	stw r0, 0x2d0(r3)
/* 805B0E18  90 A4 00 00 */	stw r5, 0(r4)
/* 805B0E1C  91 04 00 04 */	stw r8, 4(r4)
/* 805B0E20  80 83 03 00 */	lwz r4, 0x300(r3)
/* 805B0E24  38 04 00 08 */	addi r0, r4, 8
/* 805B0E28  90 03 03 00 */	stw r0, 0x300(r3)
/* 805B0E2C  90 A4 00 00 */	stw r5, 0(r4)
/* 805B0E30  91 04 00 04 */	stw r8, 4(r4)
/* 805B0E34  4E 80 00 20 */	blr 
