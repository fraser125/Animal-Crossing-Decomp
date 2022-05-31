lbl_805AEC00:
/* 805AEC00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AEC04  7C 08 02 A6 */	mflr r0
/* 805AEC08  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AEC0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805AEC10  7C 7F 1B 78 */	mr r31, r3
/* 805AEC14  38 61 00 08 */	addi r3, r1, 8
/* 805AEC18  38 9F 00 28 */	addi r4, r31, 0x28
/* 805AEC1C  4B E0 C2 A1 */	bl xyz_t_move
/* 805AEC20  3C 60 80 65 */	lis r3, data_8064A71C@ha /* 0x8064A71C@ha */
/* 805AEC24  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805AEC28  38 83 A7 1C */	addi r4, r3, data_8064A71C@l /* 0x8064A71C@l */
/* 805AEC2C  7F E3 FB 78 */	mr r3, r31
/* 805AEC30  C0 04 00 00 */	lfs f0, 0(r4)
/* 805AEC34  38 A1 00 08 */	addi r5, r1, 8
/* 805AEC38  38 80 00 0C */	li r4, 0xc
/* 805AEC3C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AEC40  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805AEC44  48 07 F3 01 */	bl sAdo_OngenPos
/* 805AEC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AEC4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AEC50  7C 08 03 A6 */	mtlr r0
/* 805AEC54  38 21 00 20 */	addi r1, r1, 0x20
/* 805AEC58  4E 80 00 20 */	blr 
