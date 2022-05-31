lbl_8042C148:
/* 8042C148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042C14C  7C 08 02 A6 */	mflr r0
/* 8042C150  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C154  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C158  4B C6 ED 7D */	bl func_8009AED4
/* 8042C15C  7C 7E 1B 78 */	mr r30, r3
/* 8042C160  39 40 00 00 */	li r10, 0
/* 8042C164  3C 60 80 68 */	lis r3, pos_490@ha /* 0x8068492C@ha */
/* 8042C168  B1 5E 00 12 */	sth r10, 0x12(r30)
/* 8042C16C  39 23 49 2C */	addi r9, r3, pos_490@l /* 0x8068492C@l */
/* 8042C170  3C 80 80 8E */	lis r4, cKF_bs_r_obj_toudai_pole@ha /* 0x808E163C@ha */
/* 8042C174  80 E9 00 00 */	lwz r7, 0(r9)
/* 8042C178  3C 60 80 64 */	lis r3, lit_475@ha /* 0x806440A0@ha */
/* 8042C17C  80 09 00 04 */	lwz r0, 4(r9)
/* 8042C180  38 C3 40 A0 */	addi r6, r3, lit_475@l /* 0x806440A0@l */
/* 8042C184  C0 06 00 00 */	lfs f0, 0(r6)
/* 8042C188  3C 60 80 8E */	lis r3, cKF_ba_r_obj_toudai_pole@ha /* 0x808E1580@ha */
/* 8042C18C  90 FE 00 00 */	stw r7, 0(r30)
/* 8042C190  39 00 00 02 */	li r8, 2
/* 8042C194  3B FE 00 20 */	addi r31, r30, 0x20
/* 8042C198  38 84 16 3C */	addi r4, r4, cKF_bs_r_obj_toudai_pole@l /* 0x808E163C@l */
/* 8042C19C  90 1E 00 04 */	stw r0, 4(r30)
/* 8042C1A0  38 03 15 80 */	addi r0, r3, cKF_ba_r_obj_toudai_pole@l /* 0x808E1580@l */
/* 8042C1A4  7C BD 2B 78 */	mr r29, r5
/* 8042C1A8  7F E3 FB 78 */	mr r3, r31
/* 8042C1AC  80 E9 00 08 */	lwz r7, 8(r9)
/* 8042C1B0  7C 05 03 78 */	mr r5, r0
/* 8042C1B4  38 DE 00 90 */	addi r6, r30, 0x90
/* 8042C1B8  90 FE 00 08 */	stw r7, 8(r30)
/* 8042C1BC  38 FE 00 D2 */	addi r7, r30, 0xd2
/* 8042C1C0  B1 5E 00 10 */	sth r10, 0x10(r30)
/* 8042C1C4  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8042C1C8  91 1E 00 18 */	stw r8, 0x18(r30)
/* 8042C1CC  4B F4 48 C9 */	bl cKF_SkeletonInfo_R_ct
/* 8042C1D0  3C 80 80 8E */	lis r4, cKF_ba_r_obj_toudai_pole@ha /* 0x808E1580@ha */
/* 8042C1D4  7F E3 FB 78 */	mr r3, r31
/* 8042C1D8  38 84 15 80 */	addi r4, r4, cKF_ba_r_obj_toudai_pole@l /* 0x808E1580@l */
/* 8042C1DC  38 A0 00 00 */	li r5, 0
/* 8042C1E0  4B F4 4A 05 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8042C1E4  2C 1D 00 01 */	cmpwi r29, 1
/* 8042C1E8  40 82 00 28 */	bne lbl_8042C210
/* 8042C1EC  3C 60 80 64 */	lis r3, lit_482@ha /* 0x806440AC@ha */
/* 8042C1F0  38 00 00 01 */	li r0, 1
/* 8042C1F4  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 8042C1F8  38 00 00 30 */	li r0, 0x30
/* 8042C1FC  C0 03 40 AC */	lfs f0, lit_482@l(r3)  /* 0x806440AC@l */
/* 8042C200  38 60 00 C9 */	li r3, 0xc9
/* 8042C204  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8042C208  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 8042C20C  48 20 1C F9 */	bl sAdo_SysLevStart
lbl_8042C210:
/* 8042C210  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8042C214  7F E3 FB 78 */	mr r3, r31
/* 8042C218  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042C21C  4B F4 4D F9 */	bl cKF_SkeletonInfo_R_play
/* 8042C220  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C224  4B C6 EC FD */	bl func_8009AF20
/* 8042C228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042C22C  7C 08 03 A6 */	mtlr r0
/* 8042C230  38 21 00 20 */	addi r1, r1, 0x20
/* 8042C234  4E 80 00 20 */	blr 
