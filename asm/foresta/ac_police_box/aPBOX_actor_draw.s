lbl_805B77AC:
/* 805B77AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B77B0  7C 08 02 A6 */	mflr r0
/* 805B77B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B77B8  39 61 00 60 */	addi r11, r1, 0x60
/* 805B77BC  4B AE 36 F1 */	bl func_8009AEAC
/* 805B77C0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B77C4  7C 94 23 78 */	mr r20, r4
/* 805B77C8  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805B77CC  3C A0 80 6C */	lis r5, data_806C61D0@ha /* 0x806C61D0@ha */
/* 805B77D0  3C 84 00 02 */	addis r4, r4, 2
/* 805B77D4  7C 73 1B 78 */	mr r19, r3
/* 805B77D8  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B77DC  3B C5 61 D0 */	addi r30, r5, data_806C61D0@l /* 0x806C61D0@l */
/* 805B77E0  83 B4 00 00 */	lwz r29, 0(r20)
/* 805B77E4  38 60 00 3B */	li r3, 0x3b
/* 805B77E8  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B77EC  7D 89 03 A6 */	mtctr r12
/* 805B77F0  4E 80 04 21 */	bctrl 
/* 805B77F4  80 13 02 D8 */	lwz r0, 0x2d8(r19)
/* 805B77F8  7C 7F 1B 78 */	mr r31, r3
/* 805B77FC  80 73 02 B4 */	lwz r3, 0x2b4(r19)
/* 805B7800  20 00 00 03 */	subfic r0, r0, 3
/* 805B7804  7C 00 00 34 */	cntlzw r0, r0
/* 805B7808  2C 03 3F FF */	cmpwi r3, 0x3fff
/* 805B780C  54 1C D9 7E */	srwi r28, r0, 5
/* 805B7810  40 82 00 24 */	bne lbl_805B7834
/* 805B7814  3B 60 00 FF */	li r27, 0xff
/* 805B7818  3A 60 00 FF */	li r19, 0xff
/* 805B781C  3B 40 00 96 */	li r26, 0x96
/* 805B7820  3B 20 00 78 */	li r25, 0x78
/* 805B7824  3B 00 00 FF */	li r24, 0xff
/* 805B7828  3A E0 00 FF */	li r23, 0xff
/* 805B782C  3A C0 00 96 */	li r22, 0x96
/* 805B7830  48 00 00 BC */	b lbl_805B78EC
lbl_805B7834:
/* 805B7834  2C 03 00 00 */	cmpwi r3, 0
/* 805B7838  40 82 00 24 */	bne lbl_805B785C
/* 805B783C  3B 60 00 00 */	li r27, 0
/* 805B7840  3A 60 00 00 */	li r19, 0
/* 805B7844  3B 40 00 00 */	li r26, 0
/* 805B7848  3B 20 00 00 */	li r25, 0
/* 805B784C  3B 00 00 00 */	li r24, 0
/* 805B7850  3A E0 00 00 */	li r23, 0
/* 805B7854  3A C0 00 00 */	li r22, 0
/* 805B7858  48 00 00 94 */	b lbl_805B78EC
lbl_805B785C:
/* 805B785C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805B7860  3C 00 43 30 */	lis r0, 0x4330
/* 805B7864  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064AA24@ha */
/* 805B7868  90 61 00 0C */	stw r3, 0xc(r1)
/* 805B786C  38 64 AA 24 */	addi r3, r4, lit_599@l /* 0x8064AA24@l */
/* 805B7870  3B 00 00 FF */	li r24, 0xff
/* 805B7874  90 01 00 08 */	stw r0, 8(r1)
/* 805B7878  3C 80 80 65 */	lis r4, lit_594@ha /* 0x8064AA14@ha */
/* 805B787C  C8 23 00 00 */	lfd f1, 0(r3)
/* 805B7880  3C 60 80 65 */	lis r3, lit_595@ha /* 0x8064AA18@ha */
/* 805B7884  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B7888  38 A3 AA 18 */	addi r5, r3, lit_595@l /* 0x8064AA18@l */
/* 805B788C  C0 64 AA 14 */	lfs f3, lit_594@l(r4)  /* 0x8064AA14@l */
/* 805B7890  3C 80 80 65 */	lis r4, lit_596@ha /* 0x8064AA1C@ha */
/* 805B7894  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B7898  3C 60 80 65 */	lis r3, lit_597@ha /* 0x8064AA20@ha */
/* 805B789C  C0 45 00 00 */	lfs f2, 0(r5)
/* 805B78A0  3A E0 00 FF */	li r23, 0xff
/* 805B78A4  C0 24 AA 1C */	lfs f1, lit_596@l(r4)  /* 0x8064AA1C@l */
/* 805B78A8  3A C0 00 96 */	li r22, 0x96
/* 805B78AC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B78B0  C0 03 AA 20 */	lfs f0, lit_597@l(r3)  /* 0x8064AA20@l */
/* 805B78B4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 805B78B8  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805B78BC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805B78C0  FC 40 10 1E */	fctiwz f2, f2
/* 805B78C4  FC 20 08 1E */	fctiwz f1, f1
/* 805B78C8  FC 00 00 1E */	fctiwz f0, f0
/* 805B78CC  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 805B78D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B78D4  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805B78D8  7C 1B 03 78 */	mr r27, r0
/* 805B78DC  7C 13 03 78 */	mr r19, r0
/* 805B78E0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805B78E4  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 805B78E8  83 21 00 24 */	lwz r25, 0x24(r1)
lbl_805B78EC:
/* 805B78EC  7F A3 EB 78 */	mr r3, r29
/* 805B78F0  4B E2 D8 B9 */	bl _texture_z_light_fog_prim_npc
/* 805B78F4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B78F8  82 BD 02 D0 */	lwz r21, 0x2d0(r29)
/* 805B78FC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B7900  7F A3 EB 78 */	mr r3, r29
/* 805B7904  90 15 00 00 */	stw r0, 0(r21)
/* 805B7908  4B E5 5A CD */	bl _Matrix_to_Mtx_new
/* 805B790C  90 75 00 04 */	stw r3, 4(r21)
/* 805B7910  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B7914  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805B7918  56 65 82 1E */	rlwinm r5, r19, 0x10, 8, 0xf
/* 805B791C  90 15 00 08 */	stw r0, 8(r21)
/* 805B7920  53 65 C0 0E */	rlwimi r5, r27, 0x18, 0, 7
/* 805B7924  3C 00 E7 00 */	lis r0, 0xe700
/* 805B7928  38 60 00 00 */	li r3, 0
/* 805B792C  93 F5 00 0C */	stw r31, 0xc(r21)
/* 805B7930  3C C0 FB 00 */	lis r6, 0xfb00
/* 805B7934  53 45 44 2E */	rlwimi r5, r26, 8, 0x10, 0x17
/* 805B7938  57 9F 10 3A */	slwi r31, r28, 2
/* 805B793C  90 15 00 10 */	stw r0, 0x10(r21)
/* 805B7940  3C 00 DE 00 */	lis r0, 0xde00
/* 805B7944  38 9E 00 DC */	addi r4, r30, 0xdc
/* 805B7948  90 75 00 14 */	stw r3, 0x14(r21)
/* 805B794C  7F A3 EB 78 */	mr r3, r29
/* 805B7950  90 D5 00 18 */	stw r6, 0x18(r21)
/* 805B7954  90 B5 00 1C */	stw r5, 0x1c(r21)
/* 805B7958  3A B5 00 20 */	addi r21, r21, 0x20
/* 805B795C  7E A5 AB 78 */	mr r5, r21
/* 805B7960  90 15 00 00 */	stw r0, 0(r21)
/* 805B7964  3A B5 00 08 */	addi r21, r21, 8
/* 805B7968  7C 04 F8 2E */	lwzx r0, r4, r31
/* 805B796C  90 05 00 04 */	stw r0, 4(r5)
/* 805B7970  92 BD 02 D0 */	stw r21, 0x2d0(r29)
/* 805B7974  4B E2 D7 E5 */	bl _texture_z_light_fog_prim_xlu
/* 805B7978  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 805B797C  82 7D 02 E0 */	lwz r19, 0x2e0(r29)
/* 805B7980  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805B7984  56 E5 82 1E */	rlwinm r5, r23, 0x10, 8, 0xf
/* 805B7988  90 13 00 00 */	stw r0, 0(r19)
/* 805B798C  53 05 C0 0E */	rlwimi r5, r24, 0x18, 0, 7
/* 805B7990  52 C5 44 2E */	rlwimi r5, r22, 8, 0x10, 0x17
/* 805B7994  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805B7998  90 B3 00 04 */	stw r5, 4(r19)
/* 805B799C  3A 73 00 08 */	addi r19, r19, 8
/* 805B79A0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805B79A4  7F A3 EB 78 */	mr r3, r29
/* 805B79A8  90 13 00 00 */	stw r0, 0(r19)
/* 805B79AC  7E 75 9B 78 */	mr r21, r19
/* 805B79B0  3A 73 00 08 */	addi r19, r19, 8
/* 805B79B4  4B E5 5A 21 */	bl _Matrix_to_Mtx_new
/* 805B79B8  90 75 00 04 */	stw r3, 4(r21)
/* 805B79BC  7E 65 9B 78 */	mr r5, r19
/* 805B79C0  3C 00 DE 00 */	lis r0, 0xde00
/* 805B79C4  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 805B79C8  90 13 00 00 */	stw r0, 0(r19)
/* 805B79CC  3A 73 00 08 */	addi r19, r19, 8
/* 805B79D0  7F A3 EB 78 */	mr r3, r29
/* 805B79D4  7C 04 F8 2E */	lwzx r0, r4, r31
/* 805B79D8  90 05 00 04 */	stw r0, 4(r5)
/* 805B79DC  92 7D 02 E0 */	stw r19, 0x2e0(r29)
/* 805B79E0  4B E2 D7 51 */	bl _texture_z_light_fog_prim_shadow
/* 805B79E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B79E8  7E 83 A3 78 */	mr r3, r20
/* 805B79EC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B79F0  38 9E 00 38 */	addi r4, r30, 0x38
/* 805B79F4  3C C5 00 02 */	addis r6, r5, 2
/* 805B79F8  38 A0 00 00 */	li r5, 0
/* 805B79FC  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B7A00  81 86 00 04 */	lwz r12, 4(r6)
/* 805B7A04  7D 89 03 A6 */	mtctr r12
/* 805B7A08  4E 80 04 21 */	bctrl 
/* 805B7A0C  39 61 00 60 */	addi r11, r1, 0x60
/* 805B7A10  4B AE 34 E9 */	bl func_8009AEF8
/* 805B7A14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B7A18  7C 08 03 A6 */	mtlr r0
/* 805B7A1C  38 21 00 60 */	addi r1, r1, 0x60
/* 805B7A20  4E 80 00 20 */	blr 
