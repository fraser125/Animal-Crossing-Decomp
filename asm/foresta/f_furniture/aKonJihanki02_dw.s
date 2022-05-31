lbl_806319B4:
/* 806319B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806319B8  7C 08 02 A6 */	mflr r0
/* 806319BC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806319C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806319C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806319C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806319CC  93 C1 00 08 */	stw r30, 8(r1)
/* 806319D0  83 E5 00 00 */	lwz r31, 0(r5)
/* 806319D4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806319D8  38 7E 00 08 */	addi r3, r30, 8
/* 806319DC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806319E0  90 1E 00 00 */	stw r0, 0(r30)
/* 806319E4  80 65 00 00 */	lwz r3, 0(r5)
/* 806319E8  4B DD B9 ED */	bl _Matrix_to_Mtx_new
/* 806319EC  90 7E 00 04 */	stw r3, 4(r30)
/* 806319F0  3C C0 80 EF */	lis r6, int_kon_jihanki02_on_model@ha /* 0x80EF73A0@ha */
/* 806319F4  3C A0 80 EF */	lis r5, int_kon_jihanki02_off_model@ha /* 0x80EF7420@ha */
/* 806319F8  3C 80 80 EF */	lis r4, int_kon_jihanki02_onT_model@ha /* 0x80EF74A0@ha */
/* 806319FC  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 80631A00  3C 60 80 EF */	lis r3, int_kon_jihanki02_offT_model@ha /* 0x80EF7510@ha */
/* 80631A04  3C E0 DE 00 */	lis r7, 0xde00
/* 80631A08  38 C6 73 A0 */	addi r6, r6, int_kon_jihanki02_on_model@l /* 0x80EF73A0@l */
/* 80631A0C  38 08 00 08 */	addi r0, r8, 8
/* 80631A10  38 A5 74 20 */	addi r5, r5, int_kon_jihanki02_off_model@l /* 0x80EF7420@l */
/* 80631A14  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80631A18  38 84 74 A0 */	addi r4, r4, int_kon_jihanki02_onT_model@l /* 0x80EF74A0@l */
/* 80631A1C  38 03 75 10 */	addi r0, r3, int_kon_jihanki02_offT_model@l /* 0x80EF7510@l */
/* 80631A20  90 E8 00 00 */	stw r7, 0(r8)
/* 80631A24  90 C8 00 04 */	stw r6, 4(r8)
/* 80631A28  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80631A2C  38 66 00 08 */	addi r3, r6, 8
/* 80631A30  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631A34  90 E6 00 00 */	stw r7, 0(r6)
/* 80631A38  90 A6 00 04 */	stw r5, 4(r6)
/* 80631A3C  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80631A40  38 65 00 08 */	addi r3, r5, 8
/* 80631A44  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631A48  90 E5 00 00 */	stw r7, 0(r5)
/* 80631A4C  90 85 00 04 */	stw r4, 4(r5)
/* 80631A50  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80631A54  38 64 00 08 */	addi r3, r4, 8
/* 80631A58  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80631A5C  90 E4 00 00 */	stw r7, 0(r4)
/* 80631A60  90 04 00 04 */	stw r0, 4(r4)
/* 80631A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631A68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80631A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631A70  7C 08 03 A6 */	mtlr r0
/* 80631A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80631A78  4E 80 00 20 */	blr 
