lbl_80424E88:
/* 80424E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424E8C  7C 08 02 A6 */	mflr r0
/* 80424E90  3C 80 80 64 */	lis r4, lit_613@ha /* 0x80643F14@ha */
/* 80424E94  3C A0 80 87 */	lis r5, cKF_bs_r_obj_gara@ha /* 0x8086C9FC@ha */
/* 80424E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424EA0  7C 7F 1B 78 */	mr r31, r3
/* 80424EA4  38 64 3F 14 */	addi r3, r4, lit_613@l /* 0x80643F14@l */
/* 80424EA8  3C 80 80 87 */	lis r4, cKF_ba_r_obj_gara@ha /* 0x8086C694@ha */
/* 80424EAC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80424EB0  38 65 C9 FC */	addi r3, r5, cKF_bs_r_obj_gara@l /* 0x8086C9FC@l */
/* 80424EB4  38 BF 01 84 */	addi r5, r31, 0x184
/* 80424EB8  38 84 C6 94 */	addi r4, r4, cKF_ba_r_obj_gara@l /* 0x8086C694@l */
/* 80424EBC  38 DF 01 F4 */	addi r6, r31, 0x1f4
/* 80424EC0  38 FF 02 06 */	addi r7, r31, 0x206
/* 80424EC4  4B FF FB DD */	bl func_80424AA0
/* 80424EC8  38 9F 00 28 */	addi r4, r31, 0x28
/* 80424ECC  38 60 10 51 */	li r3, 0x1051
/* 80424ED0  48 20 90 D9 */	bl sAdo_OngenTrgStart
/* 80424ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80424EDC  7C 08 03 A6 */	mtlr r0
/* 80424EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80424EE4  4E 80 00 20 */	blr 
