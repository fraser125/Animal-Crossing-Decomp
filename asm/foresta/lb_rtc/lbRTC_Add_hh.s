lbl_80406D8C:
/* 80406D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406D90  7C 08 02 A6 */	mflr r0
/* 80406D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80406D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80406DA0  7C 7E 1B 78 */	mr r30, r3
/* 80406DA4  8B E3 00 02 */	lbz r31, 2(r3)
/* 80406DA8  7F FF 22 14 */	add r31, r31, r4
/* 80406DAC  2C 1F 00 18 */	cmpwi r31, 0x18
/* 80406DB0  41 80 00 20 */	blt lbl_80406DD0
/* 80406DB4  38 00 00 18 */	li r0, 0x18
/* 80406DB8  7C 9F 03 D6 */	divw r4, r31, r0
/* 80406DBC  4B FF FF 69 */	bl lbRTC_Add_DD
/* 80406DC0  38 60 00 18 */	li r3, 0x18
/* 80406DC4  7C 1F 1B D6 */	divw r0, r31, r3
/* 80406DC8  7C 00 19 D6 */	mullw r0, r0, r3
/* 80406DCC  7F E0 F8 50 */	subf r31, r0, r31
lbl_80406DD0:
/* 80406DD0  9B FE 00 02 */	stb r31, 2(r30)
/* 80406DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80406DDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80406DE0  7C 08 03 A6 */	mtlr r0
/* 80406DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80406DE8  4E 80 00 20 */	blr 
