lbl_8047DE90:
/* 8047DE90  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047DE94  38 A5 DF E8 */	addi r5, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047DE98  80 C5 00 00 */	lwz r6, 0(r5)
/* 8047DE9C  28 06 00 00 */	cmplwi r6, 0
/* 8047DEA0  4D 82 00 20 */	beqlr 
/* 8047DEA4  80 05 00 04 */	lwz r0, 4(r5)
/* 8047DEA8  28 00 00 00 */	cmplwi r0, 0
/* 8047DEAC  4D 82 00 20 */	beqlr 
/* 8047DEB0  1C 63 08 58 */	mulli r3, r3, 0x858
/* 8047DEB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047DEB8  38 63 00 08 */	addi r3, r3, 8
/* 8047DEBC  7C 66 1A 14 */	add r3, r6, r3
/* 8047DEC0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8047DEC4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8047DEC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8047DECC  4E 80 00 20 */	blr 
