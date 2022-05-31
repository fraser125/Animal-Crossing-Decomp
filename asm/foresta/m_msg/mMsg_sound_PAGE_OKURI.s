lbl_803C2154:
/* 803C2154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2158  7C 08 02 A6 */	mflr r0
/* 803C215C  38 60 00 0B */	li r3, 0xb
/* 803C2160  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2164  48 26 BB A1 */	bl sAdo_SysTrgStart
/* 803C2168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C216C  7C 08 03 A6 */	mtlr r0
/* 803C2170  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2174  4E 80 00 20 */	blr 
