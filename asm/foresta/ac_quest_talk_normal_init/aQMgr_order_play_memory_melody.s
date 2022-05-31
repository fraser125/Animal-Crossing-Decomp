lbl_80494F30:
/* 80494F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494F34  7C 08 02 A6 */	mflr r0
/* 80494F38  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80494F44  80 84 EC A4 */	lwz r4, l_normal_info@l(r4)  /* 0x811CECA4@l */
/* 80494F48  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 80494F4C  28 04 00 00 */	cmplwi r4, 0
/* 80494F50  83 E5 00 00 */	lwz r31, 0(r5)
/* 80494F54  41 82 00 28 */	beq lbl_80494F7C
/* 80494F58  3C 60 81 1D */	lis r3, melody@ha /* 0x811CECCC@ha */
/* 80494F5C  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 80494F60  80 C4 00 2C */	lwz r6, 0x2c(r4)
/* 80494F64  38 63 EC CC */	addi r3, r3, melody@l /* 0x811CECCC@l */
/* 80494F68  4B F2 A1 E9 */	bl mMld_TransformMelodyData_u64_2_u8
/* 80494F6C  3C 60 81 1D */	lis r3, melody@ha /* 0x811CECCC@ha */
/* 80494F70  7F E4 FB 78 */	mr r4, r31
/* 80494F74  38 63 EC CC */	addi r3, r3, melody@l /* 0x811CECCC@l */
/* 80494F78  4B F2 A3 79 */	bl mMld_ActorMakeThisMelody
lbl_80494F7C:
/* 80494F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494F84  7C 08 03 A6 */	mtlr r0
/* 80494F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80494F8C  4E 80 00 20 */	blr 
