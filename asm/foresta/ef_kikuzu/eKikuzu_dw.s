lbl_80613F60:
/* 80613F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80613F64  7C 08 02 A6 */	mflr r0
/* 80613F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80613F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80613F70  4B A8 6F 61 */	bl func_8009AED0
/* 80613F74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80613F78  3C E0 80 65 */	lis r7, lit_393@ha /* 0x8064C57C@ha */
/* 80613F7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80613F80  3C C0 80 65 */	lis r6, lit_441@ha /* 0x8064C590@ha */
/* 80613F84  3C A5 00 02 */	addis r5, r5, 2
/* 80613F88  7C 7C 1B 78 */	mr r28, r3
/* 80613F8C  80 65 60 9C */	lwz r3, 0x609c(r5)
/* 80613F90  7C 9D 23 78 */	mr r29, r4
/* 80613F94  38 80 00 00 */	li r4, 0
/* 80613F98  38 A0 00 10 */	li r5, 0x10
/* 80613F9C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80613FA0  A8 7C 00 00 */	lha r3, 0(r28)
/* 80613FA4  C0 27 C5 7C */	lfs f1, lit_393@l(r7)  /* 0x8064C57C@l */
/* 80613FA8  C0 46 C5 90 */	lfs f2, lit_441@l(r6)  /* 0x8064C590@l */
/* 80613FAC  7D 89 03 A6 */	mtctr r12
/* 80613FB0  4E 80 04 21 */	bctrl 
/* 80613FB4  FC 00 08 1E */	fctiwz f0, f1
/* 80613FB8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80613FBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80613FC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80613FC4  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80613FC8  4B DD 11 91 */	bl _texture_z_light_fog_prim_xlu
/* 80613FCC  83 DD 00 00 */	lwz r30, 0(r29)
/* 80613FD0  38 60 00 00 */	li r3, 0
/* 80613FD4  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80613FD8  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 80613FDC  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 80613FE0  4B DF 83 21 */	bl Matrix_translate
/* 80613FE4  A8 7C 00 4C */	lha r3, 0x4c(r28)
/* 80613FE8  38 80 00 01 */	li r4, 1
/* 80613FEC  4B DF 84 CD */	bl Matrix_RotateX
/* 80613FF0  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 80613FF4  38 80 00 01 */	li r4, 1
/* 80613FF8  4B DF 87 F9 */	bl Matrix_RotateZ
/* 80613FFC  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 80614000  38 60 00 01 */	li r3, 1
/* 80614004  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 80614008  C0 7C 00 3C */	lfs f3, 0x3c(r28)
/* 8061400C  4B DF 83 E1 */	bl Matrix_scale
/* 80614010  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 80614014  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 80614018  67 E4 FF FF */	oris r4, r31, 0xffff
/* 8061401C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80614020  38 06 00 08 */	addi r0, r6, 8
/* 80614024  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 80614028  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 8061402C  60 84 C8 00 */	ori r4, r4, 0xc800
/* 80614030  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80614034  90 A6 00 00 */	stw r5, 0(r6)
/* 80614038  90 86 00 04 */	stw r4, 4(r6)
/* 8061403C  83 FE 02 E0 */	lwz r31, 0x2e0(r30)
/* 80614040  38 7F 00 08 */	addi r3, r31, 8
/* 80614044  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80614048  90 1F 00 00 */	stw r0, 0(r31)
/* 8061404C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80614050  4B DF 93 85 */	bl _Matrix_to_Mtx_new
/* 80614054  90 7F 00 04 */	stw r3, 4(r31)
/* 80614058  3C 60 80 CB */	lis r3, ef_kikuzu01_00_modelT@ha /* 0x80CB6D00@ha */
/* 8061405C  3C 80 DE 00 */	lis r4, 0xde00
/* 80614060  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80614064  38 03 6D 00 */	addi r0, r3, ef_kikuzu01_00_modelT@l /* 0x80CB6D00@l */
/* 80614068  38 65 00 08 */	addi r3, r5, 8
/* 8061406C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80614070  90 85 00 00 */	stw r4, 0(r5)
/* 80614074  90 05 00 04 */	stw r0, 4(r5)
/* 80614078  39 61 00 20 */	addi r11, r1, 0x20
/* 8061407C  4B A8 6E A1 */	bl func_8009AF1C
/* 80614080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80614084  7C 08 03 A6 */	mtlr r0
/* 80614088  38 21 00 20 */	addi r1, r1, 0x20
/* 8061408C  4E 80 00 20 */	blr 
