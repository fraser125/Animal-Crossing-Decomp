lbl_8052F7E4:
/* 8052F7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052F7E8  7C 08 02 A6 */	mflr r0
/* 8052F7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052F7F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052F7F4  7C 7F 1B 78 */	mr r31, r3
/* 8052F7F8  C0 63 09 10 */	lfs f3, 0x910(r3)
/* 8052F7FC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8052F800  C0 43 09 0C */	lfs f2, 0x90c(r3)
/* 8052F804  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8052F808  EC 23 08 28 */	fsubs f1, f3, f1
/* 8052F80C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8052F810  4B ED C7 F1 */	bl atans_table
/* 8052F814  B0 7F 09 24 */	sth r3, 0x924(r31)
/* 8052F818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052F81C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052F820  7C 08 03 A6 */	mtlr r0
/* 8052F824  38 21 00 10 */	addi r1, r1, 0x10
/* 8052F828  4E 80 00 20 */	blr 
