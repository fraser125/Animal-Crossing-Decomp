lbl_8042DA24:
/* 8042DA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042DA28  7C 08 02 A6 */	mflr r0
/* 8042DA2C  3C A0 80 68 */	lis r5, data_80684950@ha /* 0x80684950@ha */
/* 8042DA30  3C C0 80 64 */	lis r6, data_80644104@ha /* 0x80644104@ha */
/* 8042DA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042DA38  39 05 49 50 */	addi r8, r5, data_80684950@l /* 0x80684950@l */
/* 8042DA3C  3C A0 80 64 */	lis r5, lit_448@ha /* 0x80644108@ha */
/* 8042DA40  C0 86 41 04 */	lfs f4, data_80644104@l(r6)  /* 0x80644104@l */
/* 8042DA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042DA48  54 89 10 3A */	slwi r9, r4, 2
/* 8042DA4C  38 E8 00 78 */	addi r7, r8, 0x78
/* 8042DA50  C0 A5 41 08 */	lfs f5, lit_448@l(r5)  /* 0x80644108@l */
/* 8042DA54  93 C1 00 08 */	stw r30, 8(r1)
/* 8042DA58  7C 7E 1B 78 */	mr r30, r3
/* 8042DA5C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8042DA60  38 C0 00 00 */	li r6, 0
/* 8042DA64  7F E7 48 2E */	lwzx r31, r7, r9
/* 8042DA68  38 E8 00 B0 */	addi r7, r8, 0xb0
/* 8042DA6C  39 08 00 24 */	addi r8, r8, 0x24
/* 8042DA70  90 9E 03 10 */	stw r4, 0x310(r30)
/* 8042DA74  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8042DA78  7C 87 48 2E */	lwzx r4, r7, r9
/* 8042DA7C  38 E0 00 00 */	li r7, 0
/* 8042DA80  7D 08 02 14 */	add r8, r8, r0
/* 8042DA84  90 9E 03 14 */	stw r4, 0x314(r30)
/* 8042DA88  C0 28 00 04 */	lfs f1, 4(r8)
/* 8042DA8C  80 9E 01 94 */	lwz r4, 0x194(r30)
/* 8042DA90  FC 60 08 90 */	fmr f3, f1
/* 8042DA94  80 A8 00 00 */	lwz r5, 0(r8)
/* 8042DA98  C0 48 00 08 */	lfs f2, 8(r8)
/* 8042DA9C  4B F4 32 39 */	bl cKF_SkeletonInfo_R_init
/* 8042DAA0  93 FE 02 40 */	stw r31, 0x240(r30)
/* 8042DAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042DAAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042DAB0  7C 08 03 A6 */	mtlr r0
/* 8042DAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DAB8  4E 80 00 20 */	blr 
