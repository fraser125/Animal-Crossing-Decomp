lbl_805254F8:
/* 805254F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805254FC  7C 08 02 A6 */	mflr r0
/* 80525500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525504  38 00 00 00 */	li r0, 0
/* 80525508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052550C  93 C1 00 08 */	stw r30, 8(r1)
/* 80525510  7C 7E 1B 78 */	mr r30, r3
/* 80525514  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 80525518  4B FF FE A5 */	bl aES2_normal_wait_init
/* 8052551C  38 00 01 2C */	li r0, 0x12c
/* 80525520  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525524  B0 1E 09 9E */	sth r0, 0x99e(r30)
/* 80525528  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8052552C  3F E3 00 02 */	addis r31, r3, 2
/* 80525530  3C A0 80 65 */	lis r5, lit_716@ha /* 0x80649194@ha */
/* 80525534  3C 60 80 65 */	lis r3, lit_717@ha /* 0x80649198@ha */
/* 80525538  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8052553C  C0 43 91 98 */	lfs f2, lit_717@l(r3)  /* 0x80649198@l */
/* 80525540  7F C3 F3 78 */	mr r3, r30
/* 80525544  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80525548  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8052554C  C0 25 91 94 */	lfs f1, lit_716@l(r5)  /* 0x80649194@l */
/* 80525550  EC 42 00 2A */	fadds f2, f2, f0
/* 80525554  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80525558  EC 23 08 28 */	fsubs f1, f3, f1
/* 8052555C  7D 89 03 A6 */	mtctr r12
/* 80525560  4E 80 04 21 */	bctrl 
/* 80525564  38 00 00 01 */	li r0, 1
/* 80525568  90 1E 01 BC */	stw r0, 0x1bc(r30)
/* 8052556C  4B B3 77 89 */	bl fqrand
/* 80525570  3C 60 80 65 */	lis r3, lit_718@ha /* 0x8064919C@ha */
/* 80525574  C0 03 91 9C */	lfs f0, lit_718@l(r3)  /* 0x8064919C@l */
/* 80525578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052557C  40 80 00 24 */	bge lbl_805255A0
/* 80525580  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80525584  7F C3 F3 78 */	mr r3, r30
/* 80525588  38 80 00 43 */	li r4, 0x43
/* 8052558C  38 A0 00 00 */	li r5, 0
/* 80525590  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80525594  7D 89 03 A6 */	mtctr r12
/* 80525598  4E 80 04 21 */	bctrl 
/* 8052559C  48 00 00 20 */	b lbl_805255BC
lbl_805255A0:
/* 805255A0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 805255A4  7F C3 F3 78 */	mr r3, r30
/* 805255A8  38 80 00 05 */	li r4, 5
/* 805255AC  38 A0 00 00 */	li r5, 0
/* 805255B0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805255B4  7D 89 03 A6 */	mtctr r12
/* 805255B8  4E 80 04 21 */	bctrl 
lbl_805255BC:
/* 805255BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805255C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805255C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805255C8  7C 08 03 A6 */	mtlr r0
/* 805255CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805255D0  4E 80 00 20 */	blr 