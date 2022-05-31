lbl_805B075C:
/* 805B075C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B0760  7C 08 02 A6 */	mflr r0
/* 805B0764  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B0768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B076C  7C 7F 1B 78 */	mr r31, r3
/* 805B0770  93 C1 00 08 */	stw r30, 8(r1)
/* 805B0774  7C 9E 23 78 */	mr r30, r4
/* 805B0778  4B FF F4 89 */	bl aHUS_set_doorSE
/* 805B077C  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805B0780  7F E3 FB 78 */	mr r3, r31
/* 805B0784  7F C4 F3 78 */	mr r4, r30
/* 805B0788  7D 89 03 A6 */	mtctr r12
/* 805B078C  4E 80 04 21 */	bctrl 
/* 805B0790  7F E3 FB 78 */	mr r3, r31
/* 805B0794  4B FF FC A1 */	bl aHUS_ctrl_light
/* 805B0798  3C 80 80 65 */	lis r4, lit_738@ha /* 0x8064A7A8@ha */
/* 805B079C  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 805B07A0  C0 44 A7 A8 */	lfs f2, lit_738@l(r4)  /* 0x8064A7A8@l */
/* 805B07A4  4B E0 A4 C5 */	bl chase_f
/* 805B07A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B07AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B07B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B07B4  7C 08 03 A6 */	mtlr r0
/* 805B07B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B07BC  4E 80 00 20 */	blr 
