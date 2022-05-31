lbl_8063A738:
/* 8063A738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A73C  7C 08 02 A6 */	mflr r0
/* 8063A740  3C 80 80 64 */	lis r4, aSumroboclk_DwBefore@ha /* 0x8063A6E4@ha */
/* 8063A744  7C 68 1B 78 */	mr r8, r3
/* 8063A748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A74C  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 8063A750  3D 20 80 6E */	lis r9, texture_table_5258@ha /* 0x806DC904@ha */
/* 8063A754  3C 60 80 64 */	lis r3, func_8063A6DC@ha /* 0x8063A6DC@ha */
/* 8063A758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A75C  38 C4 A6 E4 */	addi r6, r4, aSumroboclk_DwBefore@l /* 0x8063A6E4@l */
/* 8063A760  81 65 00 00 */	lwz r11, 0(r5)
/* 8063A764  83 E5 00 A0 */	lwz r31, 0xa0(r5)
/* 8063A768  81 4B 02 D0 */	lwz r10, 0x2d0(r11)
/* 8063A76C  57 EC 07 FE */	clrlwi r12, r31, 0x1f
/* 8063A770  38 0A 00 08 */	addi r0, r10, 8
/* 8063A774  90 0B 02 D0 */	stw r0, 0x2d0(r11)
/* 8063A778  38 07 00 20 */	addi r0, r7, 0x0020 /* 0xDB060020@l */
/* 8063A77C  1C 8C 03 00 */	mulli r4, r12, 0x300
/* 8063A780  38 E3 A6 DC */	addi r7, r3, func_8063A6DC@l /* 0x8063A6DC@l */
/* 8063A784  90 0A 00 00 */	stw r0, 0(r10)
/* 8063A788  57 E0 17 3A */	rlwinm r0, r31, 2, 0x1c, 0x1d
/* 8063A78C  38 69 C9 04 */	addi r3, r9, texture_table_5258@l /* 0x806DC904@l */
/* 8063A790  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063A794  38 84 02 10 */	addi r4, r4, 0x210
/* 8063A798  7C A3 2B 78 */	mr r3, r5
/* 8063A79C  7C 88 22 14 */	add r4, r8, r4
/* 8063A7A0  90 0A 00 04 */	stw r0, 4(r10)
/* 8063A7A4  7C 85 23 78 */	mr r5, r4
/* 8063A7A8  38 88 01 34 */	addi r4, r8, 0x134
/* 8063A7AC  4B D3 6F 8D */	bl cKF_Si3_draw_R_SV
/* 8063A7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A7B8  7C 08 03 A6 */	mtlr r0
/* 8063A7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A7C0  4E 80 00 20 */	blr 
