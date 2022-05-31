lbl_8042C578:
/* 8042C578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042C57C  7C 08 02 A6 */	mflr r0
/* 8042C580  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C584  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C588  4B C6 E9 41 */	bl func_8009AEC8
/* 8042C58C  7C 9F 23 78 */	mr r31, r4
/* 8042C590  7C 7E 1B 78 */	mr r30, r3
/* 8042C594  7F E3 FB 78 */	mr r3, r31
/* 8042C598  4B FF FF 89 */	bl aLS_MakeRoomPrimcolorDisplayList
/* 8042C59C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8042C5A0  41 82 00 D4 */	beq lbl_8042C674
/* 8042C5A4  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 8042C5A8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8042C5AC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8042C5B0  1C 80 03 80 */	mulli r4, r0, 0x380
/* 8042C5B4  3B 64 01 18 */	addi r27, r4, 0x118
/* 8042C5B8  7F 7E DA 14 */	add r27, r30, r27
/* 8042C5BC  4B FB 8B 4D */	bl _texture_z_light_fog_prim
/* 8042C5C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8042C5C4  4B FB 8B 6D */	bl _texture_z_light_fog_prim_shadow
/* 8042C5C8  83 5F 00 00 */	lwz r26, 0(r31)
/* 8042C5CC  38 60 00 00 */	li r3, 0
/* 8042C5D0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8042C5D4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8042C5D8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8042C5DC  4B FD FD 25 */	bl Matrix_translate
/* 8042C5E0  38 60 00 00 */	li r3, 0
/* 8042C5E4  38 80 00 01 */	li r4, 1
/* 8042C5E8  4B FE 00 75 */	bl Matrix_RotateY
/* 8042C5EC  3C 80 80 64 */	lis r4, lit_584@ha /* 0x806440B0@ha */
/* 8042C5F0  38 60 00 01 */	li r3, 1
/* 8042C5F4  C0 24 40 B0 */	lfs f1, lit_584@l(r4)  /* 0x806440B0@l */
/* 8042C5F8  FC 40 08 90 */	fmr f2, f1
/* 8042C5FC  FC 60 08 90 */	fmr f3, f1
/* 8042C600  4B FD FD ED */	bl Matrix_scale
/* 8042C604  83 BA 02 D0 */	lwz r29, 0x2d0(r26)
/* 8042C608  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042C60C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042C610  38 7D 00 08 */	addi r3, r29, 8
/* 8042C614  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 8042C618  90 1D 00 00 */	stw r0, 0(r29)
/* 8042C61C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8042C620  4B FE 0D B5 */	bl _Matrix_to_Mtx_new
/* 8042C624  90 7D 00 04 */	stw r3, 4(r29)
/* 8042C628  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8042C62C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 8042C630  7F C3 F3 78 */	mr r3, r30
/* 8042C634  80 DA 02 D0 */	lwz r6, 0x2d0(r26)
/* 8042C638  7F E4 FB 78 */	mr r4, r31
/* 8042C63C  38 A6 00 08 */	addi r5, r6, 8
/* 8042C640  90 BA 02 D0 */	stw r5, 0x2d0(r26)
/* 8042C644  90 06 00 00 */	stw r0, 0(r6)
/* 8042C648  93 86 00 04 */	stw r28, 4(r6)
/* 8042C64C  4B F4 99 31 */	bl Setpos_HiliteReflect_init
/* 8042C650  3C 60 80 43 */	lis r3, aLS_PoleDrawBefore@ha /* 0x8042C434@ha */
/* 8042C654  3C 80 80 43 */	lis r4, aLS_PoleDrawAfter@ha /* 0x8042C44C@ha */
/* 8042C658  38 C3 C4 34 */	addi r6, r3, aLS_PoleDrawBefore@l /* 0x8042C434@l */
/* 8042C65C  7F 65 DB 78 */	mr r5, r27
/* 8042C660  38 E4 C4 4C */	addi r7, r4, aLS_PoleDrawAfter@l /* 0x8042C44C@l */
/* 8042C664  7F E3 FB 78 */	mr r3, r31
/* 8042C668  7F C8 F3 78 */	mr r8, r30
/* 8042C66C  38 9E 00 20 */	addi r4, r30, 0x20
/* 8042C670  4B F4 50 C9 */	bl cKF_Si3_draw_R_SV
lbl_8042C674:
/* 8042C674  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C678  4B C6 E8 9D */	bl func_8009AF14
/* 8042C67C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042C680  7C 08 03 A6 */	mtlr r0
/* 8042C684  38 21 00 20 */	addi r1, r1, 0x20
/* 8042C688  4E 80 00 20 */	blr 
