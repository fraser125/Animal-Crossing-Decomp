lbl_804E170C:
/* 804E170C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1710  7C 08 02 A6 */	mflr r0
/* 804E1714  3C 80 80 64 */	lis r4, lit_6171@ha /* 0x80647DDC@ha */
/* 804E1718  3C C0 80 64 */	lis r6, basic_angle_6175@ha /* 0x80647DE0@ha */
/* 804E171C  38 A4 7D DC */	addi r5, r4, lit_6171@l /* 0x80647DDC@l */
/* 804E1720  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1724  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E1728  38 86 7D E0 */	addi r4, r6, basic_angle_6175@l /* 0x80647DE0@l */
/* 804E172C  38 63 0E 5C */	addi r3, r3, 0xe5c
/* 804E1730  38 A0 0A AA */	li r5, 0xaaa
/* 804E1734  38 C0 00 64 */	li r6, 0x64
/* 804E1738  4B FF FD 61 */	bl func_804E1498
/* 804E173C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1740  7C 08 03 A6 */	mtlr r0
/* 804E1744  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1748  4E 80 00 20 */	blr 
