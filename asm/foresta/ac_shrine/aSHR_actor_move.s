lbl_805BB138:
/* 805BB138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BB13C  7C 08 02 A6 */	mflr r0
/* 805BB140  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BB144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BB148  7C 9F 23 78 */	mr r31, r4
/* 805BB14C  93 C1 00 08 */	stw r30, 8(r1)
/* 805BB150  7C 7E 1B 78 */	mr r30, r3
/* 805BB154  81 83 02 A0 */	lwz r12, 0x2a0(r3)
/* 805BB158  7D 89 03 A6 */	mtctr r12
/* 805BB15C  4E 80 04 21 */	bctrl 
/* 805BB160  3C 60 81 20 */	lis r3, data_811FA1F8@ha /* 0x811FA1F8@ha */
/* 805BB164  7F C4 F3 78 */	mr r4, r30
/* 805BB168  38 63 A1 F8 */	addi r3, r3, data_811FA1F8@l /* 0x811FA1F8@l */
/* 805BB16C  7F E5 FB 78 */	mr r5, r31
/* 805BB170  4B FF F7 3D */	bl aSHR_Present_move
/* 805BB174  7F C3 F3 78 */	mr r3, r30
/* 805BB178  38 BE 00 28 */	addi r5, r30, 0x28
/* 805BB17C  38 80 00 5A */	li r4, 0x5a
/* 805BB180  48 07 2D C5 */	bl sAdo_OngenPos
/* 805BB184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BB188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BB18C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BB190  7C 08 03 A6 */	mtlr r0
/* 805BB194  38 21 00 10 */	addi r1, r1, 0x10
/* 805BB198  4E 80 00 20 */	blr 
