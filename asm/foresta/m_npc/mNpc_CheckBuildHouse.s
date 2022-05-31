lbl_803D13BC:
/* 803D13BC  2C 03 00 00 */	cmpwi r3, 0
/* 803D13C0  39 20 00 00 */	li r9, 0
/* 803D13C4  41 80 00 78 */	blt lbl_803D143C
/* 803D13C8  2C 03 00 05 */	cmpwi r3, 5
/* 803D13CC  40 80 00 70 */	bge lbl_803D143C
/* 803D13D0  2C 04 00 00 */	cmpwi r4, 0
/* 803D13D4  41 80 00 68 */	blt lbl_803D143C
/* 803D13D8  2C 04 00 06 */	cmpwi r4, 6
/* 803D13DC  40 80 00 60 */	bge lbl_803D143C
/* 803D13E0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803D13E4  28 00 00 10 */	cmplwi r0, 0x10
/* 803D13E8  40 80 00 54 */	bge lbl_803D143C
/* 803D13EC  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 803D13F0  28 00 00 10 */	cmplwi r0, 0x10
/* 803D13F4  40 80 00 48 */	bge lbl_803D143C
/* 803D13F8  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 803D13FC  54 67 48 2C */	slwi r7, r3, 9
/* 803D1400  39 08 85 38 */	addi r8, r8, common_data@l /* 0x81138538@l */
/* 803D1404  54 C3 2C F4 */	rlwinm r3, r6, 5, 0x13, 0x1a
/* 803D1408  1C 84 0A 00 */	mulli r4, r4, 0xa00
/* 803D140C  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 803D1410  3C A8 00 01 */	addis r5, r8, 1
/* 803D1414  7C 85 22 14 */	add r4, r5, r4
/* 803D1418  7C 84 3A 14 */	add r4, r4, r7
/* 803D141C  7C 64 1A 14 */	add r3, r4, r3
/* 803D1420  7C 63 02 14 */	add r3, r3, r0
/* 803D1424  A0 03 37 A8 */	lhz r0, 0x37a8(r3)
/* 803D1428  28 00 58 10 */	cmplwi r0, 0x5810
/* 803D142C  41 80 00 10 */	blt lbl_803D143C
/* 803D1430  28 00 58 24 */	cmplwi r0, 0x5824
/* 803D1434  41 81 00 08 */	bgt lbl_803D143C
/* 803D1438  39 20 00 01 */	li r9, 1
lbl_803D143C:
/* 803D143C  7D 23 4B 78 */	mr r3, r9
/* 803D1440  4E 80 00 20 */	blr 
