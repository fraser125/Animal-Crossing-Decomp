lbl_80424D70:
/* 80424D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424D74  7C 08 02 A6 */	mflr r0
/* 80424D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424D7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80424D80  4B C7 61 51 */	bl func_8009AED0
/* 80424D84  7C 9D 23 78 */	mr r29, r4
/* 80424D88  7C 7C 1B 78 */	mr r28, r3
/* 80424D8C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80424D90  80 64 00 00 */	lwz r3, 0(r4)
/* 80424D94  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80424D98  1C 80 00 C0 */	mulli r4, r0, 0xc0
/* 80424D9C  3B C4 02 18 */	addi r30, r4, 0x218
/* 80424DA0  7F DC F2 14 */	add r30, r28, r30
/* 80424DA4  4B FC 03 65 */	bl _texture_z_light_fog_prim
/* 80424DA8  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 80424DAC  38 60 00 00 */	li r3, 0
/* 80424DB0  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 80424DB4  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 80424DB8  4B FE 75 49 */	bl Matrix_translate
/* 80424DBC  3C 80 80 64 */	lis r4, lit_520@ha /* 0x80643F04@ha */
/* 80424DC0  38 60 00 01 */	li r3, 1
/* 80424DC4  C0 24 3F 04 */	lfs f1, lit_520@l(r4)  /* 0x80643F04@l */
/* 80424DC8  FC 40 08 90 */	fmr f2, f1
/* 80424DCC  FC 60 08 90 */	fmr f3, f1
/* 80424DD0  4B FE 76 1D */	bl Matrix_scale
/* 80424DD4  80 9D 00 00 */	lwz r4, 0(r29)
/* 80424DD8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80424DDC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80424DE0  83 E4 02 D0 */	lwz r31, 0x2d0(r4)
/* 80424DE4  38 7F 00 08 */	addi r3, r31, 8
/* 80424DE8  90 64 02 D0 */	stw r3, 0x2d0(r4)
/* 80424DEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80424DF0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80424DF4  4B FE 85 E1 */	bl _Matrix_to_Mtx_new
/* 80424DF8  90 7F 00 04 */	stw r3, 4(r31)
/* 80424DFC  7F A3 EB 78 */	mr r3, r29
/* 80424E00  7F C5 F3 78 */	mr r5, r30
/* 80424E04  7F 88 E3 78 */	mr r8, r28
/* 80424E08  38 9C 01 84 */	addi r4, r28, 0x184
/* 80424E0C  38 C0 00 00 */	li r6, 0
/* 80424E10  38 E0 00 00 */	li r7, 0
/* 80424E14  4B F4 C9 25 */	bl cKF_Si3_draw_R_SV
/* 80424E18  7F A4 EB 78 */	mr r4, r29
/* 80424E1C  38 7C 03 B0 */	addi r3, r28, 0x3b0
/* 80424E20  48 00 06 7D */	bl aGRBL_draw
/* 80424E24  39 61 00 20 */	addi r11, r1, 0x20
/* 80424E28  4B C7 60 F5 */	bl func_8009AF1C
/* 80424E2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424E30  7C 08 03 A6 */	mtlr r0
/* 80424E34  38 21 00 20 */	addi r1, r1, 0x20
/* 80424E38  4E 80 00 20 */	blr 
