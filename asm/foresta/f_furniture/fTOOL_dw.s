lbl_8063DF70:
/* 8063DF70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063DF74  7C 08 02 A6 */	mflr r0
/* 8063DF78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063DF7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DF80  4B A5 CF 4D */	bl func_8009AECC
/* 8063DF84  7C BE 2B 78 */	mr r30, r5
/* 8063DF88  7C 7D 1B 78 */	mr r29, r3
/* 8063DF8C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063DF90  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063DF94  A0 9D 00 00 */	lhz r4, 0(r29)
/* 8063DF98  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063DF9C  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8063DFA0  38 84 FB 9D */	addi r4, r4, -1123
/* 8063DFA4  38 7C 00 08 */	addi r3, r28, 8
/* 8063DFA8  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DFAC  54 9B 07 BE */	clrlwi r27, r4, 0x1e
/* 8063DFB0  90 1C 00 00 */	stw r0, 0(r28)
/* 8063DFB4  80 65 00 00 */	lwz r3, 0(r5)
/* 8063DFB8  4B DC F4 1D */	bl _Matrix_to_Mtx_new
/* 8063DFBC  90 7C 00 04 */	stw r3, 4(r28)
/* 8063DFC0  3C 80 80 6E */	lis r4, fTOOL_mat_table@ha /* 0x806DE6C0@ha */
/* 8063DFC4  3C 60 80 6E */	lis r3, fTOOL_gfx_table@ha /* 0x806DE6D0@ha */
/* 8063DFC8  3C A0 DE 00 */	lis r5, 0xde00
/* 8063DFCC  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063DFD0  57 67 10 3A */	slwi r7, r27, 2
/* 8063DFD4  38 84 E6 C0 */	addi r4, r4, fTOOL_mat_table@l /* 0x806DE6C0@l */
/* 8063DFD8  38 63 E6 D0 */	addi r3, r3, fTOOL_gfx_table@l /* 0x806DE6D0@l */
/* 8063DFDC  38 06 00 08 */	addi r0, r6, 8
/* 8063DFE0  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DFE4  90 A6 00 00 */	stw r5, 0(r6)
/* 8063DFE8  7C 04 38 2E */	lwzx r0, r4, r7
/* 8063DFEC  90 06 00 04 */	stw r0, 4(r6)
/* 8063DFF0  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063DFF4  38 04 00 08 */	addi r0, r4, 8
/* 8063DFF8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DFFC  90 A4 00 00 */	stw r5, 0(r4)
/* 8063E000  7C 03 38 2E */	lwzx r0, r3, r7
/* 8063E004  90 04 00 04 */	stw r0, 4(r4)
/* 8063E008  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8063E00C  28 00 04 66 */	cmplwi r0, 0x466
/* 8063E010  40 82 00 64 */	bne lbl_8063E074
/* 8063E014  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8063E018  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063E01C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063E020  38 7D 00 08 */	addi r3, r29, 8
/* 8063E024  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063E028  90 1D 00 00 */	stw r0, 0(r29)
/* 8063E02C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063E030  4B DC F3 A5 */	bl _Matrix_to_Mtx_new
/* 8063E034  90 7D 00 04 */	stw r3, 4(r29)
/* 8063E038  3C 80 80 9E */	lis r4, obj_rodT_mat_model@ha /* 0x809E4BF0@ha */
/* 8063E03C  3C 60 80 9E */	lis r3, obj_rodT_gfx_model@ha /* 0x809E4C38@ha */
/* 8063E040  3C A0 DE 00 */	lis r5, 0xde00
/* 8063E044  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8063E048  38 84 4B F0 */	addi r4, r4, obj_rodT_mat_model@l /* 0x809E4BF0@l */
/* 8063E04C  38 03 4C 38 */	addi r0, r3, obj_rodT_gfx_model@l /* 0x809E4C38@l */
/* 8063E050  38 66 00 08 */	addi r3, r6, 8
/* 8063E054  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063E058  90 A6 00 00 */	stw r5, 0(r6)
/* 8063E05C  90 86 00 04 */	stw r4, 4(r6)
/* 8063E060  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 8063E064  38 64 00 08 */	addi r3, r4, 8
/* 8063E068  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063E06C  90 A4 00 00 */	stw r5, 0(r4)
/* 8063E070  90 04 00 04 */	stw r0, 4(r4)
lbl_8063E074:
/* 8063E074  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E078  4B A5 CE A1 */	bl func_8009AF18
/* 8063E07C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E080  7C 08 03 A6 */	mtlr r0
/* 8063E084  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E088  4E 80 00 20 */	blr 
