lbl_80496D9C:
/* 80496D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496DA0  7C 08 02 A6 */	mflr r0
/* 80496DA4  3C A0 80 69 */	lis r5, move@ha /* 0x8068BAE8@ha */
/* 80496DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496DAC  38 A5 BA E8 */	addi r5, r5, move@l /* 0x8068BAE8@l */
/* 80496DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80496DB4  7C 7F 1B 78 */	mr r31, r3
/* 80496DB8  88 03 01 74 */	lbz r0, 0x174(r3)
/* 80496DBC  7C 83 23 78 */	mr r3, r4
/* 80496DC0  7F E4 FB 78 */	mr r4, r31
/* 80496DC4  54 00 10 3A */	slwi r0, r0, 2
/* 80496DC8  7D 85 00 2E */	lwzx r12, r5, r0
/* 80496DCC  7D 89 03 A6 */	mtctr r12
/* 80496DD0  4E 80 04 21 */	bctrl 
/* 80496DD4  2C 03 00 01 */	cmpwi r3, 1
/* 80496DD8  40 82 00 0C */	bne lbl_80496DE4
/* 80496DDC  88 1F 01 75 */	lbz r0, 0x175(r31)
/* 80496DE0  98 1F 01 74 */	stb r0, 0x174(r31)
lbl_80496DE4:
/* 80496DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496DEC  7C 08 03 A6 */	mtlr r0
/* 80496DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80496DF4  4E 80 00 20 */	blr 
