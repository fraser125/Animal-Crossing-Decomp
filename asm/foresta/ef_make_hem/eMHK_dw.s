lbl_80616B88:
/* 80616B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80616B8C  7C 08 02 A6 */	mflr r0
/* 80616B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80616B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80616B98  4B A8 43 3D */	bl func_8009AED4
/* 80616B9C  7C 7E 1B 78 */	mr r30, r3
/* 80616BA0  7C 9D 23 78 */	mr r29, r4
/* 80616BA4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80616BA8  38 60 00 00 */	li r3, 0
/* 80616BAC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80616BB0  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80616BB4  4B DF 57 4D */	bl Matrix_translate
/* 80616BB8  38 7D 20 4C */	addi r3, r29, 0x204c
/* 80616BBC  38 80 00 01 */	li r4, 1
/* 80616BC0  4B DF 56 D9 */	bl Matrix_mult
/* 80616BC4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80616BC8  38 60 00 01 */	li r3, 1
/* 80616BCC  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80616BD0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80616BD4  4B DF 58 19 */	bl Matrix_scale
/* 80616BD8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80616BDC  4B DC E5 7D */	bl _texture_z_light_fog_prim_xlu
/* 80616BE0  83 FD 00 00 */	lwz r31, 0(r29)
/* 80616BE4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80616BE8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80616BEC  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 80616BF0  38 7E 00 08 */	addi r3, r30, 8
/* 80616BF4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80616BF8  90 1E 00 00 */	stw r0, 0(r30)
/* 80616BFC  80 7D 00 00 */	lwz r3, 0(r29)
/* 80616C00  4B DF 67 D5 */	bl _Matrix_to_Mtx_new
/* 80616C04  90 7E 00 04 */	stw r3, 4(r30)
/* 80616C08  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 80616C0C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80616C10  3C 80 80 CC */	lis r4, ef_takurami01_normal_render_mode@ha /* 0x80CC0590@ha */
/* 80616C14  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 80616C18  3C 60 80 CC */	lis r3, ef_takurami01_kira_modelT@ha /* 0x80CC0400@ha */
/* 80616C1C  39 06 00 FF */	addi r8, r6, 0x00FF /* 0xFA0000FF@l */
/* 80616C20  38 E0 FF C8 */	li r7, -56
/* 80616C24  38 09 00 08 */	addi r0, r9, 8
/* 80616C28  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 80616C2C  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80616C30  38 A4 05 90 */	addi r5, r4, ef_takurami01_normal_render_mode@l /* 0x80CC0590@l */
/* 80616C34  3C 80 DE 00 */	lis r4, 0xde00
/* 80616C38  38 03 04 00 */	addi r0, r3, ef_takurami01_kira_modelT@l /* 0x80CC0400@l */
/* 80616C3C  91 09 00 00 */	stw r8, 0(r9)
/* 80616C40  90 E9 00 04 */	stw r7, 4(r9)
/* 80616C44  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80616C48  38 67 00 08 */	addi r3, r7, 8
/* 80616C4C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80616C50  90 C7 00 00 */	stw r6, 0(r7)
/* 80616C54  90 A7 00 04 */	stw r5, 4(r7)
/* 80616C58  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80616C5C  38 65 00 08 */	addi r3, r5, 8
/* 80616C60  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80616C64  90 85 00 00 */	stw r4, 0(r5)
/* 80616C68  90 05 00 04 */	stw r0, 4(r5)
/* 80616C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80616C70  4B A8 42 B1 */	bl func_8009AF20
/* 80616C74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80616C78  7C 08 03 A6 */	mtlr r0
/* 80616C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80616C80  4E 80 00 20 */	blr 
