lbl_803D3DAC:
/* 803D3DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3DB0  7C 08 02 A6 */	mflr r0
/* 803D3DB4  54 84 08 3C */	slwi r4, r4, 1
/* 803D3DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3DBC  4B C8 92 AD */	bl bzero
/* 803D3DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3DC4  7C 08 03 A6 */	mtlr r0
/* 803D3DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D3DCC  4E 80 00 20 */	blr 
