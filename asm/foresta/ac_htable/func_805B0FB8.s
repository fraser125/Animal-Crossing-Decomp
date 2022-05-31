lbl_805B0FB8:
/* 805B0FB8  2C 06 00 00 */	cmpwi r6, 0
/* 805B0FBC  54 A8 A7 3E */	rlwinm r8, r5, 0x14, 0x1c, 0x1f
/* 805B0FC0  4D 80 00 20 */	bltlr 
/* 805B0FC4  2C 06 00 03 */	cmpwi r6, 3
/* 805B0FC8  4C 80 00 20 */	bgelr 
/* 805B0FCC  3C E0 80 6C */	lis r7, high_offset@ha /* 0x806C5620@ha */
/* 805B0FD0  54 C0 10 3A */	slwi r0, r6, 2
/* 805B0FD4  38 E7 56 20 */	addi r7, r7, high_offset@l /* 0x806C5620@l */
/* 805B0FD8  3C A0 80 6C */	lis r5, unit_offset@ha /* 0x806C55E0@ha */
/* 805B0FDC  7C 07 00 2E */	lwzx r0, r7, r0
/* 805B0FE0  38 A5 55 E0 */	addi r5, r5, unit_offset@l /* 0x806C55E0@l */
/* 805B0FE4  80 C3 00 00 */	lwz r6, 0(r3)
/* 805B0FE8  7C 08 02 14 */	add r0, r8, r0
/* 805B0FEC  54 07 16 BA */	rlwinm r7, r0, 2, 0x1a, 0x1d
/* 805B0FF0  7C 05 3A AE */	lhax r0, r5, r7
/* 805B0FF4  7C A5 3A 14 */	add r5, r5, r7
/* 805B0FF8  7C 06 02 14 */	add r0, r6, r0
/* 805B0FFC  90 03 00 00 */	stw r0, 0(r3)
/* 805B1000  80 64 00 00 */	lwz r3, 0(r4)
/* 805B1004  A8 05 00 02 */	lha r0, 2(r5)
/* 805B1008  7C 03 02 14 */	add r0, r3, r0
/* 805B100C  90 04 00 00 */	stw r0, 0(r4)
/* 805B1010  4E 80 00 20 */	blr 
