lbl_8061680C:
/* 8061680C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80616810  7C 08 02 A6 */	mflr r0
/* 80616814  90 01 00 34 */	stw r0, 0x34(r1)
/* 80616818  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8061681C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80616820  39 61 00 20 */	addi r11, r1, 0x20
/* 80616824  4B A8 46 AD */	bl func_8009AED0
/* 80616828  3C A0 80 65 */	lis r5, lit_493@ha /* 0x8064C75C@ha */
/* 8061682C  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 80616830  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80616834  3B E3 00 10 */	addi r31, r3, 0x10
/* 80616838  C0 25 C7 5C */	lfs f1, lit_493@l(r5)  /* 0x8064C75C@l */
/* 8061683C  7C 9C 23 78 */	mr r28, r4
/* 80616840  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80616844  7F E3 FB 78 */	mr r3, r31
/* 80616848  EF E1 00 32 */	fmuls f31, f1, f0
/* 8061684C  4B D5 F7 CD */	bl Setpos_HiliteReflect_xlu_init
/* 80616850  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80616854  38 60 00 00 */	li r3, 0
/* 80616858  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8061685C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80616860  4B DF 5A A1 */	bl Matrix_translate
/* 80616864  FC 20 F8 90 */	fmr f1, f31
/* 80616868  38 60 00 01 */	li r3, 1
/* 8061686C  FC 40 F8 90 */	fmr f2, f31
/* 80616870  FC 60 F8 90 */	fmr f3, f31
/* 80616874  4B DF 5B 79 */	bl Matrix_scale
/* 80616878  80 7C 00 00 */	lwz r3, 0(r28)
/* 8061687C  4B DC E8 8D */	bl _texture_z_light_fog_prim
/* 80616880  83 BC 00 00 */	lwz r29, 0(r28)
/* 80616884  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 80616888  67 C4 FF FF */	oris r4, r30, 0xffff
/* 8061688C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80616890  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 80616894  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 80616898  60 84 FF 00 */	ori r4, r4, 0xff00
/* 8061689C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806168A0  38 66 00 08 */	addi r3, r6, 8
/* 806168A4  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 806168A8  90 A6 00 00 */	stw r5, 0(r6)
/* 806168AC  90 86 00 04 */	stw r4, 4(r6)
/* 806168B0  83 FD 02 E0 */	lwz r31, 0x2e0(r29)
/* 806168B4  38 7F 00 08 */	addi r3, r31, 8
/* 806168B8  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 806168BC  90 1F 00 00 */	stw r0, 0(r31)
/* 806168C0  80 7C 00 00 */	lwz r3, 0(r28)
/* 806168C4  4B DF 6B 11 */	bl _Matrix_to_Mtx_new
/* 806168C8  90 7F 00 04 */	stw r3, 4(r31)
/* 806168CC  3C 60 80 CC */	lis r3, ef_sphere_light_model@ha /* 0x80CB86C0@ha */
/* 806168D0  3C 80 DE 00 */	lis r4, 0xde00
/* 806168D4  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 806168D8  38 03 86 C0 */	addi r0, r3, ef_sphere_light_model@l /* 0x80CB86C0@l */
/* 806168DC  38 65 00 08 */	addi r3, r5, 8
/* 806168E0  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 806168E4  90 85 00 00 */	stw r4, 0(r5)
/* 806168E8  90 05 00 04 */	stw r0, 4(r5)
/* 806168EC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806168F0  39 61 00 20 */	addi r11, r1, 0x20
/* 806168F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806168F8  4B A8 46 25 */	bl func_8009AF1C
/* 806168FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80616900  7C 08 03 A6 */	mtlr r0
/* 80616904  38 21 00 30 */	addi r1, r1, 0x30
/* 80616908  4E 80 00 20 */	blr 
