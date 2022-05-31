lbl_804DF830:
/* 804DF830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF834  7C 08 02 A6 */	mflr r0
/* 804DF838  7C 64 1B 78 */	mr r4, r3
/* 804DF83C  38 60 01 34 */	li r3, 0x134
/* 804DF840  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF844  48 14 E7 65 */	bl sAdo_OngenTrgStart
/* 804DF848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF84C  7C 08 03 A6 */	mtlr r0
/* 804DF850  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF854  4E 80 00 20 */	blr 
