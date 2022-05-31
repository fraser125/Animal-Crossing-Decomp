lbl_8063E2BC:
/* 8063E2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E2C0  7C 08 02 A6 */	mflr r0
/* 8063E2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E2C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E2CC  4B A5 CC 09 */	bl func_8009AED4
/* 8063E2D0  A8 03 00 02 */	lha r0, 2(r3)
/* 8063E2D4  2C 00 00 01 */	cmpwi r0, 1
/* 8063E2D8  40 82 00 0C */	bne lbl_8063E2E4
/* 8063E2DC  83 A5 20 90 */	lwz r29, 0x2090(r5)
/* 8063E2E0  48 00 00 08 */	b lbl_8063E2E8
lbl_8063E2E4:
/* 8063E2E4  83 A5 00 A0 */	lwz r29, 0xa0(r5)
lbl_8063E2E8:
/* 8063E2E8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063E2EC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063E2F0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063E2F4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063E2F8  38 7E 00 08 */	addi r3, r30, 8
/* 8063E2FC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E300  90 1E 00 00 */	stw r0, 0(r30)
/* 8063E304  80 65 00 00 */	lwz r3, 0(r5)
/* 8063E308  4B DC F0 CD */	bl _Matrix_to_Mtx_new
/* 8063E30C  57 A7 E8 FE */	srwi r7, r29, 3
/* 8063E310  38 C0 00 07 */	li r6, 7
/* 8063E314  7C 07 33 96 */	divwu r0, r7, r6
/* 8063E318  90 7E 00 04 */	stw r3, 4(r30)
/* 8063E31C  3D 00 DB 06 */	lis r8, 0xDB06 /* 0xDB060024@ha */
/* 8063E320  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 8063E324  3C A0 80 6E */	lis r5, fIMH_palette_table@ha /* 0x806DED10@ha */
/* 8063E328  3C 80 80 EB */	lis r4, int_iku_mario_hatena_model_b_model@ha /* 0x80EAB4C0@ha */
/* 8063E32C  7C 00 31 D6 */	mullw r0, r0, r6
/* 8063E330  38 C9 00 08 */	addi r6, r9, 8
/* 8063E334  3C 60 80 EB */	lis r3, int_iku_mario_hatena_model_a_model@ha /* 0x80EAB528@ha */
/* 8063E338  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8063E33C  38 C8 00 24 */	addi r6, r8, 0x0024 /* 0xDB060024@l */
/* 8063E340  90 C9 00 00 */	stw r6, 0(r9)
/* 8063E344  7C 00 38 50 */	subf r0, r0, r7
/* 8063E348  38 C5 ED 10 */	addi r6, r5, fIMH_palette_table@l /* 0x806DED10@l */
/* 8063E34C  54 00 10 3A */	slwi r0, r0, 2
/* 8063E350  3C A0 DE 00 */	lis r5, 0xde00
/* 8063E354  7C C6 00 2E */	lwzx r6, r6, r0
/* 8063E358  38 84 B4 C0 */	addi r4, r4, int_iku_mario_hatena_model_b_model@l /* 0x80EAB4C0@l */
/* 8063E35C  38 03 B5 28 */	addi r0, r3, int_iku_mario_hatena_model_a_model@l /* 0x80EAB528@l */
/* 8063E360  90 C9 00 04 */	stw r6, 4(r9)
/* 8063E364  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063E368  38 66 00 08 */	addi r3, r6, 8
/* 8063E36C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E370  90 A6 00 00 */	stw r5, 0(r6)
/* 8063E374  90 86 00 04 */	stw r4, 4(r6)
/* 8063E378  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063E37C  38 64 00 08 */	addi r3, r4, 8
/* 8063E380  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063E384  90 A4 00 00 */	stw r5, 0(r4)
/* 8063E388  90 04 00 04 */	stw r0, 4(r4)
/* 8063E38C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E390  4B A5 CB 91 */	bl func_8009AF20
/* 8063E394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E398  7C 08 03 A6 */	mtlr r0
/* 8063E39C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E3A0  4E 80 00 20 */	blr 
