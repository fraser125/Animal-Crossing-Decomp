lbl_8060B8C8:
/* 8060B8C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060B8CC  7C 08 02 A6 */	mflr r0
/* 8060B8D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060B8D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8060B8D8  4B A8 F5 FD */	bl func_8009AED4
/* 8060B8DC  7C 7E 1B 78 */	mr r30, r3
/* 8060B8E0  7C 9D 23 78 */	mr r29, r4
/* 8060B8E4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8060B8E8  38 60 00 00 */	li r3, 0
/* 8060B8EC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8060B8F0  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8060B8F4  4B E0 0A 0D */	bl Matrix_translate
/* 8060B8F8  38 7D 20 4C */	addi r3, r29, 0x204c
/* 8060B8FC  38 80 00 01 */	li r4, 1
/* 8060B900  4B E0 09 99 */	bl Matrix_mult
/* 8060B904  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8060B908  38 60 00 01 */	li r3, 1
/* 8060B90C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8060B910  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8060B914  4B E0 0A D9 */	bl Matrix_scale
/* 8060B918  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060B91C  4B DD 98 3D */	bl _texture_z_light_fog_prim_xlu
/* 8060B920  83 FD 00 00 */	lwz r31, 0(r29)
/* 8060B924  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060B928  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060B92C  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 8060B930  38 7E 00 08 */	addi r3, r30, 8
/* 8060B934  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060B938  90 1E 00 00 */	stw r0, 0(r30)
/* 8060B93C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060B940  4B E0 1A 95 */	bl _Matrix_to_Mtx_new
/* 8060B944  90 7E 00 04 */	stw r3, 4(r30)
/* 8060B948  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 8060B94C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8060B950  3C 80 80 CC */	lis r4, ef_takurami01_normal_render_mode@ha /* 0x80CC0590@ha */
/* 8060B954  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 8060B958  3C 60 80 CC */	lis r3, ef_takurami01_kira_modelT@ha /* 0x80CC0400@ha */
/* 8060B95C  39 06 00 FF */	addi r8, r6, 0x00FF /* 0xFA0000FF@l */
/* 8060B960  38 E0 FF C8 */	li r7, -56
/* 8060B964  38 09 00 08 */	addi r0, r9, 8
/* 8060B968  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 8060B96C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 8060B970  38 A4 05 90 */	addi r5, r4, ef_takurami01_normal_render_mode@l /* 0x80CC0590@l */
/* 8060B974  3C 80 DE 00 */	lis r4, 0xde00
/* 8060B978  38 03 04 00 */	addi r0, r3, ef_takurami01_kira_modelT@l /* 0x80CC0400@l */
/* 8060B97C  91 09 00 00 */	stw r8, 0(r9)
/* 8060B980  90 E9 00 04 */	stw r7, 4(r9)
/* 8060B984  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8060B988  38 67 00 08 */	addi r3, r7, 8
/* 8060B98C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060B990  90 C7 00 00 */	stw r6, 0(r7)
/* 8060B994  90 A7 00 04 */	stw r5, 4(r7)
/* 8060B998  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060B99C  38 65 00 08 */	addi r3, r5, 8
/* 8060B9A0  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060B9A4  90 85 00 00 */	stw r4, 0(r5)
/* 8060B9A8  90 05 00 04 */	stw r0, 4(r5)
/* 8060B9AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8060B9B0  4B A8 F5 71 */	bl func_8009AF20
/* 8060B9B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060B9B8  7C 08 03 A6 */	mtlr r0
/* 8060B9BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8060B9C0  4E 80 00 20 */	blr 
