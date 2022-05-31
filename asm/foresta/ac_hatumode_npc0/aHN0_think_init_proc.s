lbl_8052BA00:
/* 8052BA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BA04  7C 08 02 A6 */	mflr r0
/* 8052BA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052BA10  7C 7F 1B 78 */	mr r31, r3
/* 8052BA14  4B FF F6 D9 */	bl aHN0_birth
/* 8052BA18  38 00 00 FF */	li r0, 0xff
/* 8052BA1C  38 60 00 00 */	li r3, 0
/* 8052BA20  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8052BA24  38 00 00 17 */	li r0, 0x17
/* 8052BA28  98 7F 08 31 */	stb r3, 0x831(r31)
/* 8052BA2C  90 7F 07 D8 */	stw r3, 0x7d8(r31)
/* 8052BA30  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8052BA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052BA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BA3C  7C 08 03 A6 */	mtlr r0
/* 8052BA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BA44  4E 80 00 20 */	blr 
