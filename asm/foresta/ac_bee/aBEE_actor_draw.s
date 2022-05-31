lbl_8050D844:
/* 8050D844  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8050D848  7C 08 02 A6 */	mflr r0
/* 8050D84C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8050D850  39 61 00 50 */	addi r11, r1, 0x50
/* 8050D854  4B B8 D6 75 */	bl func_8009AEC8
/* 8050D858  3C A0 80 65 */	lis r5, lit_442@ha /* 0x80648E78@ha */
/* 8050D85C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8050D860  C0 25 8E 78 */	lfs f1, lit_442@l(r5)  /* 0x80648E78@l */
/* 8050D864  7C 7D 1B 78 */	mr r29, r3
/* 8050D868  7C 9F 23 78 */	mr r31, r4
/* 8050D86C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050D870  41 80 01 54 */	blt lbl_8050D9C4
/* 8050D874  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8050D878  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050D87C  40 80 00 08 */	bge lbl_8050D884
/* 8050D880  48 00 01 44 */	b lbl_8050D9C4
lbl_8050D884:
/* 8050D884  83 DF 00 00 */	lwz r30, 0(r31)
/* 8050D888  A8 7D 04 42 */	lha r3, 0x442(r29)
/* 8050D88C  4B EA D2 65 */	bl sin_s
/* 8050D890  3C 80 80 65 */	lis r4, lit_542@ha /* 0x80648EC4@ha */
/* 8050D894  A8 7D 04 42 */	lha r3, 0x442(r29)
/* 8050D898  C0 04 8E C4 */	lfs f0, lit_542@l(r4)  /* 0x80648EC4@l */
/* 8050D89C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050D8A0  FC 00 00 1E */	fctiwz f0, f0
/* 8050D8A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050D8A8  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 8050D8AC  4B EA D1 F1 */	bl cos_s
/* 8050D8B0  3C 80 80 65 */	lis r4, lit_542@ha /* 0x80648EC4@ha */
/* 8050D8B4  A8 7D 04 40 */	lha r3, 0x440(r29)
/* 8050D8B8  C0 04 8E C4 */	lfs f0, lit_542@l(r4)  /* 0x80648EC4@l */
/* 8050D8BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050D8C0  FC 00 00 1E */	fctiwz f0, f0
/* 8050D8C4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8050D8C8  83 61 00 24 */	lwz r27, 0x24(r1)
/* 8050D8CC  4B EA D1 D1 */	bl cos_s
/* 8050D8D0  3C 80 80 65 */	lis r4, lit_542@ha /* 0x80648EC4@ha */
/* 8050D8D4  A8 7D 04 40 */	lha r3, 0x440(r29)
/* 8050D8D8  C0 04 8E C4 */	lfs f0, lit_542@l(r4)  /* 0x80648EC4@l */
/* 8050D8DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050D8E0  FC 00 00 1E */	fctiwz f0, f0
/* 8050D8E4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8050D8E8  83 81 00 2C */	lwz r28, 0x2c(r1)
/* 8050D8EC  4B EA D2 05 */	bl sin_s
/* 8050D8F0  3C 60 80 65 */	lis r3, lit_542@ha /* 0x80648EC4@ha */
/* 8050D8F4  93 41 00 08 */	stw r26, 8(r1)
/* 8050D8F8  C0 03 8E C4 */	lfs f0, lit_542@l(r3)  /* 0x80648EC4@l */
/* 8050D8FC  38 00 00 20 */	li r0, 0x20
/* 8050D900  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050D904  7F C3 F3 78 */	mr r3, r30
/* 8050D908  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050D90C  7F 86 E3 78 */	mr r6, r28
/* 8050D910  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050D914  7F 6A DB 78 */	mr r10, r27
/* 8050D918  38 80 00 00 */	li r4, 0
/* 8050D91C  38 E0 00 20 */	li r7, 0x20
/* 8050D920  FC 00 00 1E */	fctiwz f0, f0
/* 8050D924  39 00 00 20 */	li r8, 0x20
/* 8050D928  39 20 00 01 */	li r9, 1
/* 8050D92C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050D930  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8050D934  4B ED 7C 8D */	bl two_tex_scroll_dolphin
/* 8050D938  7C 7C 1B 79 */	or. r28, r3, r3
/* 8050D93C  41 82 00 88 */	beq lbl_8050D9C4
/* 8050D940  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 8050D944  54 03 45 EE */	rlwinm r3, r0, 8, 0x17, 0x17
/* 8050D948  3B 43 02 20 */	addi r26, r3, 0x220
/* 8050D94C  7F 5D D2 14 */	add r26, r29, r26
/* 8050D950  4B EF E8 85 */	bl Matrix_push
/* 8050D954  7F C3 F3 78 */	mr r3, r30
/* 8050D958  4B ED 78 01 */	bl _texture_z_light_fog_prim_xlu
/* 8050D95C  7F E4 FB 78 */	mr r4, r31
/* 8050D960  38 7D 00 28 */	addi r3, r29, 0x28
/* 8050D964  4B E6 86 B5 */	bl Setpos_HiliteReflect_xlu_init
/* 8050D968  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 8050D96C  81 5E 02 E0 */	lwz r10, 0x2e0(r30)
/* 8050D970  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 8050D974  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8050D978  90 0A 00 00 */	stw r0, 0(r10)
/* 8050D97C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 8050D980  7F E3 FB 78 */	mr r3, r31
/* 8050D984  7F 45 D3 78 */	mr r5, r26
/* 8050D988  80 FD 04 38 */	lwz r7, 0x438(r29)
/* 8050D98C  7F A8 EB 78 */	mr r8, r29
/* 8050D990  38 9D 01 7C */	addi r4, r29, 0x17c
/* 8050D994  38 C0 00 00 */	li r6, 0
/* 8050D998  54 E9 06 3E */	clrlwi r9, r7, 0x18
/* 8050D99C  38 E0 00 00 */	li r7, 0
/* 8050D9A0  91 2A 00 04 */	stw r9, 4(r10)
/* 8050D9A4  39 4A 00 08 */	addi r10, r10, 8
/* 8050D9A8  7D 49 53 78 */	mr r9, r10
/* 8050D9AC  90 0A 00 00 */	stw r0, 0(r10)
/* 8050D9B0  39 4A 00 08 */	addi r10, r10, 8
/* 8050D9B4  93 89 00 04 */	stw r28, 4(r9)
/* 8050D9B8  91 5E 02 E0 */	stw r10, 0x2e0(r30)
/* 8050D9BC  4B E6 3D 7D */	bl cKF_Si3_draw_R_SV
/* 8050D9C0  4B EF E8 55 */	bl Matrix_pull
lbl_8050D9C4:
/* 8050D9C4  39 61 00 50 */	addi r11, r1, 0x50
/* 8050D9C8  4B B8 D5 4D */	bl func_8009AF14
/* 8050D9CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8050D9D0  7C 08 03 A6 */	mtlr r0
/* 8050D9D4  38 21 00 50 */	addi r1, r1, 0x50
/* 8050D9D8  4E 80 00 20 */	blr 
