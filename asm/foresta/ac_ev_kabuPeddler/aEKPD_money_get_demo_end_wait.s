lbl_805218B4:
/* 805218B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805218B8  7C 08 02 A6 */	mflr r0
/* 805218BC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805218C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805218C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805218C8  7C 9F 23 78 */	mr r31, r4
/* 805218CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805218D0  7C 7E 1B 78 */	mr r30, r3
/* 805218D4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805218D8  3C 63 00 02 */	addis r3, r3, 2
/* 805218DC  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 805218E0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805218E4  28 00 00 00 */	cmplwi r0, 0
/* 805218E8  40 82 00 24 */	bne lbl_8052190C
/* 805218EC  4B E9 DD BD */	bl func_803BF6A8
/* 805218F0  4B E9 F4 5D */	bl mMsg_Unset_LockContinue
/* 805218F4  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 805218F8  7F C3 F3 78 */	mr r3, r30
/* 805218FC  7F E4 FB 78 */	mr r4, r31
/* 80521900  38 A0 00 07 */	li r5, 7
/* 80521904  7D 89 03 A6 */	mtctr r12
/* 80521908  4E 80 04 21 */	bctrl 
lbl_8052190C:
/* 8052190C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80521914  83 C1 00 08 */	lwz r30, 8(r1)
/* 80521918  7C 08 03 A6 */	mtlr r0
/* 8052191C  38 21 00 10 */	addi r1, r1, 0x10
/* 80521920  4E 80 00 20 */	blr 
