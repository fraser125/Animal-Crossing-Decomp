lbl_8049EE28:
/* 8049EE28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049EE2C  7C 08 02 A6 */	mflr r0
/* 8049EE30  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049EE34  39 61 00 40 */	addi r11, r1, 0x40
/* 8049EE38  4B BF C0 89 */	bl func_8009AEC0
/* 8049EE3C  AB 03 00 24 */	lha r24, 0x24(r3)
/* 8049EE40  3C A0 80 69 */	lis r5, data_8068E358@ha /* 0x8068E358@ha */
/* 8049EE44  A8 03 01 7A */	lha r0, 0x17a(r3)
/* 8049EE48  3B E5 E3 58 */	addi r31, r5, data_8068E358@l /* 0x8068E358@l */
/* 8049EE4C  1F 98 00 18 */	mulli r28, r24, 0x18
/* 8049EE50  7C 99 23 78 */	mr r25, r4
/* 8049EE54  54 04 10 3A */	slwi r4, r0, 2
/* 8049EE58  7C 1F E0 2E */	lwzx r0, r31, r28
/* 8049EE5C  7C 63 22 14 */	add r3, r3, r4
/* 8049EE60  83 C3 01 88 */	lwz r30, 0x188(r3)
/* 8049EE64  28 00 00 00 */	cmplwi r0, 0
/* 8049EE68  3B 7E 00 20 */	addi r27, r30, 0x20
/* 8049EE6C  3B 5E 08 20 */	addi r26, r30, 0x820
/* 8049EE70  41 82 01 08 */	beq lbl_8049EF78
/* 8049EE74  83 B9 00 00 */	lwz r29, 0(r25)
/* 8049EE78  7F A3 EB 78 */	mr r3, r29
/* 8049EE7C  4B F4 62 8D */	bl _texture_z_light_fog_prim
/* 8049EE80  2C 18 00 01 */	cmpwi r24, 1
/* 8049EE84  40 82 00 30 */	bne lbl_8049EEB4
/* 8049EE88  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645BD8@ha */
/* 8049EE8C  7F 24 CB 78 */	mr r4, r25
/* 8049EE90  38 E3 5B D8 */	addi r7, r3, lit_644@l /* 0x80645BD8@l */
/* 8049EE94  38 61 00 08 */	addi r3, r1, 8
/* 8049EE98  80 C7 00 00 */	lwz r6, 0(r7)
/* 8049EE9C  80 A7 00 04 */	lwz r5, 4(r7)
/* 8049EEA0  80 07 00 08 */	lwz r0, 8(r7)
/* 8049EEA4  90 C1 00 08 */	stw r6, 8(r1)
/* 8049EEA8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8049EEAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049EEB0  4B ED 70 CD */	bl Setpos_HiliteReflect_init
lbl_8049EEB4:
/* 8049EEB4  80 FD 02 D0 */	lwz r7, 0x2d0(r29)
/* 8049EEB8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8049EEBC  3C 80 80 64 */	lis r4, data_80645BC4@ha /* 0x80645BC4@ha */
/* 8049EEC0  38 60 00 00 */	li r3, 0
/* 8049EEC4  38 C7 00 08 */	addi r6, r7, 8
/* 8049EEC8  C0 24 5B C4 */	lfs f1, data_80645BC4@l(r4)  /* 0x80645BC4@l */
/* 8049EECC  90 DD 02 D0 */	stw r6, 0x2d0(r29)
/* 8049EED0  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 8049EED4  38 85 00 24 */	addi r4, r5, 0x24
/* 8049EED8  FC 40 08 90 */	fmr f2, f1
/* 8049EEDC  90 07 00 00 */	stw r0, 0(r7)
/* 8049EEE0  38 05 00 28 */	addi r0, r5, 0x28
/* 8049EEE4  FC 60 08 90 */	fmr f3, f1
/* 8049EEE8  93 67 00 04 */	stw r27, 4(r7)
/* 8049EEEC  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 8049EEF0  38 A6 00 08 */	addi r5, r6, 8
/* 8049EEF4  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 8049EEF8  90 86 00 00 */	stw r4, 0(r6)
/* 8049EEFC  93 46 00 04 */	stw r26, 4(r6)
/* 8049EF00  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8049EF04  38 85 00 08 */	addi r4, r5, 8
/* 8049EF08  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 8049EF0C  90 05 00 00 */	stw r0, 0(r5)
/* 8049EF10  93 C5 00 04 */	stw r30, 4(r5)
/* 8049EF14  4B F6 D3 ED */	bl Matrix_translate
/* 8049EF18  3C 80 80 64 */	lis r4, lit_579@ha /* 0x80645BC8@ha */
/* 8049EF1C  38 60 00 01 */	li r3, 1
/* 8049EF20  C0 24 5B C8 */	lfs f1, lit_579@l(r4)  /* 0x80645BC8@l */
/* 8049EF24  FC 40 08 90 */	fmr f2, f1
/* 8049EF28  FC 60 08 90 */	fmr f3, f1
/* 8049EF2C  4B F6 D4 C1 */	bl Matrix_scale
/* 8049EF30  83 1D 02 D0 */	lwz r24, 0x2d0(r29)
/* 8049EF34  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049EF38  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049EF3C  38 78 00 08 */	addi r3, r24, 8
/* 8049EF40  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8049EF44  90 18 00 00 */	stw r0, 0(r24)
/* 8049EF48  80 79 00 00 */	lwz r3, 0(r25)
/* 8049EF4C  4B F6 E4 89 */	bl _Matrix_to_Mtx_new
/* 8049EF50  90 78 00 04 */	stw r3, 4(r24)
/* 8049EF54  7F 23 CB 78 */	mr r3, r25
/* 8049EF58  4B F1 97 C1 */	bl Global_kankyo_set_room_prim
/* 8049EF5C  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 8049EF60  3C 00 DE 00 */	lis r0, 0xde00
/* 8049EF64  38 64 00 08 */	addi r3, r4, 8
/* 8049EF68  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8049EF6C  90 04 00 00 */	stw r0, 0(r4)
/* 8049EF70  7C 1F E0 2E */	lwzx r0, r31, r28
/* 8049EF74  90 04 00 04 */	stw r0, 4(r4)
lbl_8049EF78:
/* 8049EF78  3C 60 80 69 */	lis r3, data_8068E358@ha /* 0x8068E358@ha */
/* 8049EF7C  38 03 E3 58 */	addi r0, r3, data_8068E358@l /* 0x8068E358@l */
/* 8049EF80  7F A0 E2 14 */	add r29, r0, r28
/* 8049EF84  84 1D 00 04 */	lwzu r0, 4(r29)
/* 8049EF88  28 00 00 00 */	cmplwi r0, 0
/* 8049EF8C  41 82 00 D4 */	beq lbl_8049F060
/* 8049EF90  83 99 00 00 */	lwz r28, 0(r25)
/* 8049EF94  7F 83 E3 78 */	mr r3, r28
/* 8049EF98  4B F4 61 C1 */	bl _texture_z_light_fog_prim_xlu
/* 8049EF9C  80 FC 02 E0 */	lwz r7, 0x2e0(r28)
/* 8049EFA0  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8049EFA4  3C 80 80 64 */	lis r4, data_80645BC4@ha /* 0x80645BC4@ha */
/* 8049EFA8  38 60 00 00 */	li r3, 0
/* 8049EFAC  38 C7 00 08 */	addi r6, r7, 8
/* 8049EFB0  C0 24 5B C4 */	lfs f1, data_80645BC4@l(r4)  /* 0x80645BC4@l */
/* 8049EFB4  90 DC 02 E0 */	stw r6, 0x2e0(r28)
/* 8049EFB8  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 8049EFBC  38 85 00 24 */	addi r4, r5, 0x24
/* 8049EFC0  FC 40 08 90 */	fmr f2, f1
/* 8049EFC4  90 07 00 00 */	stw r0, 0(r7)
/* 8049EFC8  38 05 00 28 */	addi r0, r5, 0x28
/* 8049EFCC  FC 60 08 90 */	fmr f3, f1
/* 8049EFD0  93 67 00 04 */	stw r27, 4(r7)
/* 8049EFD4  80 DC 02 E0 */	lwz r6, 0x2e0(r28)
/* 8049EFD8  38 A6 00 08 */	addi r5, r6, 8
/* 8049EFDC  90 BC 02 E0 */	stw r5, 0x2e0(r28)
/* 8049EFE0  90 86 00 00 */	stw r4, 0(r6)
/* 8049EFE4  93 46 00 04 */	stw r26, 4(r6)
/* 8049EFE8  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 8049EFEC  38 85 00 08 */	addi r4, r5, 8
/* 8049EFF0  90 9C 02 E0 */	stw r4, 0x2e0(r28)
/* 8049EFF4  90 05 00 00 */	stw r0, 0(r5)
/* 8049EFF8  93 C5 00 04 */	stw r30, 4(r5)
/* 8049EFFC  4B F6 D3 05 */	bl Matrix_translate
/* 8049F000  3C 80 80 64 */	lis r4, lit_579@ha /* 0x80645BC8@ha */
/* 8049F004  38 60 00 01 */	li r3, 1
/* 8049F008  C0 24 5B C8 */	lfs f1, lit_579@l(r4)  /* 0x80645BC8@l */
/* 8049F00C  FC 40 08 90 */	fmr f2, f1
/* 8049F010  FC 60 08 90 */	fmr f3, f1
/* 8049F014  4B F6 D3 D9 */	bl Matrix_scale
/* 8049F018  83 5C 02 E0 */	lwz r26, 0x2e0(r28)
/* 8049F01C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049F020  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049F024  38 7A 00 08 */	addi r3, r26, 8
/* 8049F028  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8049F02C  90 1A 00 00 */	stw r0, 0(r26)
/* 8049F030  80 79 00 00 */	lwz r3, 0(r25)
/* 8049F034  4B F6 E3 A1 */	bl _Matrix_to_Mtx_new
/* 8049F038  90 7A 00 04 */	stw r3, 4(r26)
/* 8049F03C  7F 23 CB 78 */	mr r3, r25
/* 8049F040  4B F1 96 D9 */	bl Global_kankyo_set_room_prim
/* 8049F044  80 9C 02 E0 */	lwz r4, 0x2e0(r28)
/* 8049F048  3C 00 DE 00 */	lis r0, 0xde00
/* 8049F04C  38 64 00 08 */	addi r3, r4, 8
/* 8049F050  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8049F054  90 04 00 00 */	stw r0, 0(r4)
/* 8049F058  80 1D 00 00 */	lwz r0, 0(r29)
/* 8049F05C  90 04 00 04 */	stw r0, 4(r4)
lbl_8049F060:
/* 8049F060  39 61 00 40 */	addi r11, r1, 0x40
/* 8049F064  4B BF BE A9 */	bl func_8009AF0C
/* 8049F068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049F06C  7C 08 03 A6 */	mtlr r0
/* 8049F070  38 21 00 40 */	addi r1, r1, 0x40
/* 8049F074  4E 80 00 20 */	blr 
