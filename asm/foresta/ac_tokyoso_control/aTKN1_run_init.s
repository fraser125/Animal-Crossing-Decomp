lbl_804AB04C:
/* 804AB04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB050  7C 08 02 A6 */	mflr r0
/* 804AB054  38 80 00 04 */	li r4, 4
/* 804AB058  38 A0 00 02 */	li r5, 2
/* 804AB05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB060  38 C0 00 03 */	li r6, 3
/* 804AB064  38 E0 00 00 */	li r7, 0
/* 804AB068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB06C  7C 7F 1B 78 */	mr r31, r3
/* 804AB070  A9 03 09 A2 */	lha r8, 0x9a2(r3)
/* 804AB074  A9 23 09 A4 */	lha r9, 0x9a4(r3)
/* 804AB078  4B FF FE E1 */	bl func_804AAF58
/* 804AB07C  38 00 00 FA */	li r0, 0xfa
/* 804AB080  38 60 00 66 */	li r3, 0x66
/* 804AB084  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 804AB088  38 00 00 00 */	li r0, 0
/* 804AB08C  B0 7F 09 74 */	sth r3, 0x974(r31)
/* 804AB090  98 1F 09 73 */	stb r0, 0x973(r31)
/* 804AB094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB09C  7C 08 03 A6 */	mtlr r0
/* 804AB0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB0A4  4E 80 00 20 */	blr 
