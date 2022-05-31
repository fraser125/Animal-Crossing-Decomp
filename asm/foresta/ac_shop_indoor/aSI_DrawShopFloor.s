lbl_8049E9F8:
/* 8049E9F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049E9FC  7C 08 02 A6 */	mflr r0
/* 8049EA00  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049EA04  39 61 00 30 */	addi r11, r1, 0x30
/* 8049EA08  4B BF C4 B1 */	bl func_8009AEB8
/* 8049EA0C  A8 03 01 78 */	lha r0, 0x178(r3)
/* 8049EA10  7C 97 23 78 */	mr r23, r4
/* 8049EA14  AB 03 00 24 */	lha r24, 0x24(r3)
/* 8049EA18  54 00 10 3A */	slwi r0, r0, 2
/* 8049EA1C  7E C3 02 14 */	add r22, r3, r0
/* 8049EA20  80 64 00 00 */	lwz r3, 0(r4)
/* 8049EA24  83 F6 01 80 */	lwz r31, 0x180(r22)
/* 8049EA28  3B 9F 00 20 */	addi r28, r31, 0x20
/* 8049EA2C  3B 7F 08 20 */	addi r27, r31, 0x820
/* 8049EA30  3B 5F 10 20 */	addi r26, r31, 0x1020
/* 8049EA34  3B 3F 18 20 */	addi r25, r31, 0x1820
/* 8049EA38  4B F4 67 21 */	bl _texture_z_light_fog_prim_xlu
/* 8049EA3C  80 77 00 00 */	lwz r3, 0(r23)
/* 8049EA40  4B F4 66 C9 */	bl _texture_z_light_fog_prim
/* 8049EA44  7E E3 BB 78 */	mr r3, r23
/* 8049EA48  4B F1 9C D1 */	bl Global_kankyo_set_room_prim
/* 8049EA4C  80 16 01 80 */	lwz r0, 0x180(r22)
/* 8049EA50  28 00 00 00 */	cmplwi r0, 0
/* 8049EA54  41 82 02 18 */	beq lbl_8049EC6C
/* 8049EA58  1F B8 00 18 */	mulli r29, r24, 0x18
/* 8049EA5C  3C 60 80 69 */	lis r3, data_8068E358@ha /* 0x8068E358@ha */
/* 8049EA60  38 03 E3 58 */	addi r0, r3, data_8068E358@l /* 0x8068E358@l */
/* 8049EA64  7F C0 EA 14 */	add r30, r0, r29
/* 8049EA68  84 1E 00 08 */	lwzu r0, 8(r30)
/* 8049EA6C  28 00 00 00 */	cmplwi r0, 0
/* 8049EA70  41 82 00 F4 */	beq lbl_8049EB64
/* 8049EA74  83 17 00 00 */	lwz r24, 0(r23)
/* 8049EA78  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 8049EA7C  3C 80 80 64 */	lis r4, data_80645BC4@ha /* 0x80645BC4@ha */
/* 8049EA80  38 60 00 00 */	li r3, 0
/* 8049EA84  81 38 02 D0 */	lwz r9, 0x2d0(r24)
/* 8049EA88  39 07 00 20 */	addi r8, r7, 0x0020 /* 0xDB060020@l */
/* 8049EA8C  C0 24 5B C4 */	lfs f1, data_80645BC4@l(r4)  /* 0x80645BC4@l */
/* 8049EA90  38 C7 00 24 */	addi r6, r7, 0x24
/* 8049EA94  38 09 00 08 */	addi r0, r9, 8
/* 8049EA98  38 A7 00 28 */	addi r5, r7, 0x28
/* 8049EA9C  90 18 02 D0 */	stw r0, 0x2d0(r24)
/* 8049EAA0  38 87 00 2C */	addi r4, r7, 0x2c
/* 8049EAA4  38 07 00 30 */	addi r0, r7, 0x30
/* 8049EAA8  FC 40 08 90 */	fmr f2, f1
/* 8049EAAC  91 09 00 00 */	stw r8, 0(r9)
/* 8049EAB0  FC 60 08 90 */	fmr f3, f1
/* 8049EAB4  93 89 00 04 */	stw r28, 4(r9)
/* 8049EAB8  81 18 02 D0 */	lwz r8, 0x2d0(r24)
/* 8049EABC  38 E8 00 08 */	addi r7, r8, 8
/* 8049EAC0  90 F8 02 D0 */	stw r7, 0x2d0(r24)
/* 8049EAC4  90 C8 00 00 */	stw r6, 0(r8)
/* 8049EAC8  93 68 00 04 */	stw r27, 4(r8)
/* 8049EACC  80 F8 02 D0 */	lwz r7, 0x2d0(r24)
/* 8049EAD0  38 C7 00 08 */	addi r6, r7, 8
/* 8049EAD4  90 D8 02 D0 */	stw r6, 0x2d0(r24)
/* 8049EAD8  90 A7 00 00 */	stw r5, 0(r7)
/* 8049EADC  93 47 00 04 */	stw r26, 4(r7)
/* 8049EAE0  80 D8 02 D0 */	lwz r6, 0x2d0(r24)
/* 8049EAE4  38 A6 00 08 */	addi r5, r6, 8
/* 8049EAE8  90 B8 02 D0 */	stw r5, 0x2d0(r24)
/* 8049EAEC  90 86 00 00 */	stw r4, 0(r6)
/* 8049EAF0  93 26 00 04 */	stw r25, 4(r6)
/* 8049EAF4  80 B8 02 D0 */	lwz r5, 0x2d0(r24)
/* 8049EAF8  38 85 00 08 */	addi r4, r5, 8
/* 8049EAFC  90 98 02 D0 */	stw r4, 0x2d0(r24)
/* 8049EB00  90 05 00 00 */	stw r0, 0(r5)
/* 8049EB04  93 E5 00 04 */	stw r31, 4(r5)
/* 8049EB08  4B F6 D7 F9 */	bl Matrix_translate
/* 8049EB0C  3C 80 80 64 */	lis r4, lit_579@ha /* 0x80645BC8@ha */
/* 8049EB10  38 60 00 01 */	li r3, 1
/* 8049EB14  C0 24 5B C8 */	lfs f1, lit_579@l(r4)  /* 0x80645BC8@l */
/* 8049EB18  FC 40 08 90 */	fmr f2, f1
/* 8049EB1C  FC 60 08 90 */	fmr f3, f1
/* 8049EB20  4B F6 D8 CD */	bl Matrix_scale
/* 8049EB24  82 D8 02 D0 */	lwz r22, 0x2d0(r24)
/* 8049EB28  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049EB2C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049EB30  38 76 00 08 */	addi r3, r22, 8
/* 8049EB34  90 78 02 D0 */	stw r3, 0x2d0(r24)
/* 8049EB38  90 16 00 00 */	stw r0, 0(r22)
/* 8049EB3C  80 77 00 00 */	lwz r3, 0(r23)
/* 8049EB40  4B F6 E8 95 */	bl _Matrix_to_Mtx_new
/* 8049EB44  90 76 00 04 */	stw r3, 4(r22)
/* 8049EB48  3C 00 DE 00 */	lis r0, 0xde00
/* 8049EB4C  80 98 02 D0 */	lwz r4, 0x2d0(r24)
/* 8049EB50  38 64 00 08 */	addi r3, r4, 8
/* 8049EB54  90 78 02 D0 */	stw r3, 0x2d0(r24)
/* 8049EB58  90 04 00 00 */	stw r0, 0(r4)
/* 8049EB5C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8049EB60  90 04 00 04 */	stw r0, 4(r4)
lbl_8049EB64:
/* 8049EB64  3C 60 80 69 */	lis r3, data_8068E358@ha /* 0x8068E358@ha */
/* 8049EB68  38 03 E3 58 */	addi r0, r3, data_8068E358@l /* 0x8068E358@l */
/* 8049EB6C  7F A0 EA 14 */	add r29, r0, r29
/* 8049EB70  84 1D 00 0C */	lwzu r0, 0xc(r29)
/* 8049EB74  28 00 00 00 */	cmplwi r0, 0
/* 8049EB78  41 82 00 F4 */	beq lbl_8049EC6C
/* 8049EB7C  83 17 00 00 */	lwz r24, 0(r23)
/* 8049EB80  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 8049EB84  3C 80 80 64 */	lis r4, data_80645BC4@ha /* 0x80645BC4@ha */
/* 8049EB88  38 60 00 00 */	li r3, 0
/* 8049EB8C  81 38 02 E0 */	lwz r9, 0x2e0(r24)
/* 8049EB90  39 07 00 20 */	addi r8, r7, 0x0020 /* 0xDB060020@l */
/* 8049EB94  C0 24 5B C4 */	lfs f1, data_80645BC4@l(r4)  /* 0x80645BC4@l */
/* 8049EB98  38 C7 00 24 */	addi r6, r7, 0x24
/* 8049EB9C  38 09 00 08 */	addi r0, r9, 8
/* 8049EBA0  38 A7 00 28 */	addi r5, r7, 0x28
/* 8049EBA4  90 18 02 E0 */	stw r0, 0x2e0(r24)
/* 8049EBA8  38 87 00 2C */	addi r4, r7, 0x2c
/* 8049EBAC  38 07 00 30 */	addi r0, r7, 0x30
/* 8049EBB0  FC 40 08 90 */	fmr f2, f1
/* 8049EBB4  91 09 00 00 */	stw r8, 0(r9)
/* 8049EBB8  FC 60 08 90 */	fmr f3, f1
/* 8049EBBC  93 89 00 04 */	stw r28, 4(r9)
/* 8049EBC0  81 18 02 E0 */	lwz r8, 0x2e0(r24)
/* 8049EBC4  38 E8 00 08 */	addi r7, r8, 8
/* 8049EBC8  90 F8 02 E0 */	stw r7, 0x2e0(r24)
/* 8049EBCC  90 C8 00 00 */	stw r6, 0(r8)
/* 8049EBD0  93 68 00 04 */	stw r27, 4(r8)
/* 8049EBD4  80 F8 02 E0 */	lwz r7, 0x2e0(r24)
/* 8049EBD8  38 C7 00 08 */	addi r6, r7, 8
/* 8049EBDC  90 D8 02 E0 */	stw r6, 0x2e0(r24)
/* 8049EBE0  90 A7 00 00 */	stw r5, 0(r7)
/* 8049EBE4  93 47 00 04 */	stw r26, 4(r7)
/* 8049EBE8  80 D8 02 E0 */	lwz r6, 0x2e0(r24)
/* 8049EBEC  38 A6 00 08 */	addi r5, r6, 8
/* 8049EBF0  90 B8 02 E0 */	stw r5, 0x2e0(r24)
/* 8049EBF4  90 86 00 00 */	stw r4, 0(r6)
/* 8049EBF8  93 26 00 04 */	stw r25, 4(r6)
/* 8049EBFC  80 B8 02 E0 */	lwz r5, 0x2e0(r24)
/* 8049EC00  38 85 00 08 */	addi r4, r5, 8
/* 8049EC04  90 98 02 E0 */	stw r4, 0x2e0(r24)
/* 8049EC08  90 05 00 00 */	stw r0, 0(r5)
/* 8049EC0C  93 E5 00 04 */	stw r31, 4(r5)
/* 8049EC10  4B F6 D6 F1 */	bl Matrix_translate
/* 8049EC14  3C 80 80 64 */	lis r4, lit_579@ha /* 0x80645BC8@ha */
/* 8049EC18  38 60 00 01 */	li r3, 1
/* 8049EC1C  C0 24 5B C8 */	lfs f1, lit_579@l(r4)  /* 0x80645BC8@l */
/* 8049EC20  FC 40 08 90 */	fmr f2, f1
/* 8049EC24  FC 60 08 90 */	fmr f3, f1
/* 8049EC28  4B F6 D7 C5 */	bl Matrix_scale
/* 8049EC2C  83 38 02 E0 */	lwz r25, 0x2e0(r24)
/* 8049EC30  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049EC34  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049EC38  38 79 00 08 */	addi r3, r25, 8
/* 8049EC3C  90 78 02 E0 */	stw r3, 0x2e0(r24)
/* 8049EC40  90 19 00 00 */	stw r0, 0(r25)
/* 8049EC44  80 77 00 00 */	lwz r3, 0(r23)
/* 8049EC48  4B F6 E7 8D */	bl _Matrix_to_Mtx_new
/* 8049EC4C  90 79 00 04 */	stw r3, 4(r25)
/* 8049EC50  3C 00 DE 00 */	lis r0, 0xde00
/* 8049EC54  80 98 02 E0 */	lwz r4, 0x2e0(r24)
/* 8049EC58  38 64 00 08 */	addi r3, r4, 8
/* 8049EC5C  90 78 02 E0 */	stw r3, 0x2e0(r24)
/* 8049EC60  90 04 00 00 */	stw r0, 0(r4)
/* 8049EC64  80 1D 00 00 */	lwz r0, 0(r29)
/* 8049EC68  90 04 00 04 */	stw r0, 4(r4)
lbl_8049EC6C:
/* 8049EC6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8049EC70  4B BF C2 95 */	bl func_8009AF04
/* 8049EC74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049EC78  7C 08 03 A6 */	mtlr r0
/* 8049EC7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049EC80  4E 80 00 20 */	blr 
