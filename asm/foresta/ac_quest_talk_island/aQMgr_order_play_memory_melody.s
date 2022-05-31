lbl_8048FAC8:
/* 8048FAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FACC  7C 08 02 A6 */	mflr r0
/* 8048FAD0  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048FAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FAD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048FADC  80 84 EB F0 */	lwz r4, l_normal_info@l(r4)  /* 0x811CEBF0@l */
/* 8048FAE0  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 8048FAE4  28 04 00 00 */	cmplwi r4, 0
/* 8048FAE8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8048FAEC  41 82 00 28 */	beq lbl_8048FB14
/* 8048FAF0  3C 60 81 1D */	lis r3, melody@ha /* 0x811CEC18@ha */
/* 8048FAF4  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 8048FAF8  80 C4 00 2C */	lwz r6, 0x2c(r4)
/* 8048FAFC  38 63 EC 18 */	addi r3, r3, melody@l /* 0x811CEC18@l */
/* 8048FB00  4B F2 F6 51 */	bl mMld_TransformMelodyData_u64_2_u8
/* 8048FB04  3C 60 81 1D */	lis r3, melody@ha /* 0x811CEC18@ha */
/* 8048FB08  7F E4 FB 78 */	mr r4, r31
/* 8048FB0C  38 63 EC 18 */	addi r3, r3, melody@l /* 0x811CEC18@l */
/* 8048FB10  4B F2 F7 E1 */	bl mMld_ActorMakeThisMelody
lbl_8048FB14:
/* 8048FB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048FB1C  7C 08 03 A6 */	mtlr r0
/* 8048FB20  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FB24  4E 80 00 20 */	blr 
