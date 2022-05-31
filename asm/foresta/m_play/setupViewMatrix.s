lbl_8062ABB8:
/* 8062ABB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062ABBC  7C 08 02 A6 */	mflr r0
/* 8062ABC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062ABC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8062ABC8  4B A7 03 0D */	bl func_8009AED4
/* 8062ABCC  7C 7D 1B 78 */	mr r29, r3
/* 8062ABD0  7C 9E 23 78 */	mr r30, r4
/* 8062ABD4  7C BF 2B 78 */	mr r31, r5
/* 8062ABD8  38 7D 1B 00 */	addi r3, r29, 0x1b00
/* 8062ABDC  38 9D 20 4C */	addi r4, r29, 0x204c
/* 8062ABE0  4B DE 2A 21 */	bl Matrix_MtxtoMtxF
/* 8062ABE4  38 7D 1A C0 */	addi r3, r29, 0x1ac0
/* 8062ABE8  38 9D 20 0C */	addi r4, r29, 0x200c
/* 8062ABEC  4B DE 2A 15 */	bl Matrix_MtxtoMtxF
/* 8062ABF0  38 7D 20 0C */	addi r3, r29, 0x200c
/* 8062ABF4  38 9D 20 4C */	addi r4, r29, 0x204c
/* 8062ABF8  7C 65 1B 78 */	mr r5, r3
/* 8062ABFC  4B DC 69 29 */	bl Skin_Matrix_MulMatrix
/* 8062AC00  3C 80 80 65 */	lis r4, data_8064D0CC@ha /* 0x8064D0CC@ha */
/* 8062AC04  38 7D 20 4C */	addi r3, r29, 0x204c
/* 8062AC08  C0 04 D0 CC */	lfs f0, data_8064D0CC@l(r4)  /* 0x8064D0CC@l */
/* 8062AC0C  D0 1D 20 58 */	stfs f0, 0x2058(r29)
/* 8062AC10  D0 1D 20 68 */	stfs f0, 0x2068(r29)
/* 8062AC14  D0 1D 20 78 */	stfs f0, 0x2078(r29)
/* 8062AC18  D0 1D 20 7C */	stfs f0, 0x207c(r29)
/* 8062AC1C  D0 1D 20 80 */	stfs f0, 0x2080(r29)
/* 8062AC20  D0 1D 20 84 */	stfs f0, 0x2084(r29)
/* 8062AC24  4B DE 2C C5 */	bl Matrix_reverse
/* 8062AC28  80 9F 02 D4 */	lwz r4, 0x2d4(r31)
/* 8062AC2C  38 7D 20 4C */	addi r3, r29, 0x204c
/* 8062AC30  38 84 FF C0 */	addi r4, r4, -64
/* 8062AC34  90 9F 02 D4 */	stw r4, 0x2d4(r31)
/* 8062AC38  4B DE 25 55 */	bl _MtxF_to_Mtx
/* 8062AC3C  90 7D 20 8C */	stw r3, 0x208c(r29)
/* 8062AC40  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB06001C@ha */
/* 8062AC44  38 83 00 1C */	addi r4, r3, 0x001C /* 0xDB06001C@l */
/* 8062AC48  80 7E 03 20 */	lwz r3, 0x320(r30)
/* 8062AC4C  38 03 00 08 */	addi r0, r3, 8
/* 8062AC50  90 1E 03 20 */	stw r0, 0x320(r30)
/* 8062AC54  90 83 00 00 */	stw r4, 0(r3)
/* 8062AC58  80 1D 20 8C */	lwz r0, 0x208c(r29)
/* 8062AC5C  90 03 00 04 */	stw r0, 4(r3)
/* 8062AC60  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 8062AC64  38 03 00 08 */	addi r0, r3, 8
/* 8062AC68  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 8062AC6C  90 83 00 00 */	stw r4, 0(r3)
/* 8062AC70  80 1D 20 8C */	lwz r0, 0x208c(r29)
/* 8062AC74  90 03 00 04 */	stw r0, 4(r3)
/* 8062AC78  39 61 00 20 */	addi r11, r1, 0x20
/* 8062AC7C  4B A7 02 A5 */	bl func_8009AF20
/* 8062AC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062AC84  7C 08 03 A6 */	mtlr r0
/* 8062AC88  38 21 00 20 */	addi r1, r1, 0x20
/* 8062AC8C  4E 80 00 20 */	blr 
