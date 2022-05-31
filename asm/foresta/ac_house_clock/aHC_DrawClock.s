lbl_8042A674:
/* 8042A674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042A678  7C 08 02 A6 */	mflr r0
/* 8042A67C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042A680  39 61 00 20 */	addi r11, r1, 0x20
/* 8042A684  4B C7 08 49 */	bl func_8009AECC
/* 8042A688  7C 9C 23 78 */	mr r28, r4
/* 8042A68C  7C 7B 1B 78 */	mr r27, r3
/* 8042A690  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8042A694  80 64 00 00 */	lwz r3, 0(r4)
/* 8042A698  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8042A69C  1C 80 01 C0 */	mulli r4, r0, 0x1c0
/* 8042A6A0  3B C4 02 38 */	addi r30, r4, 0x238
/* 8042A6A4  7F DB F2 14 */	add r30, r27, r30
/* 8042A6A8  4B FB AA 61 */	bl _texture_z_light_fog_prim
/* 8042A6AC  83 BC 00 00 */	lwz r29, 0(r28)
/* 8042A6B0  38 60 00 00 */	li r3, 0
/* 8042A6B4  C0 3B 01 7C */	lfs f1, 0x17c(r27)
/* 8042A6B8  C0 5B 01 80 */	lfs f2, 0x180(r27)
/* 8042A6BC  C0 7B 01 84 */	lfs f3, 0x184(r27)
/* 8042A6C0  4B FE 1C 41 */	bl Matrix_translate
/* 8042A6C4  3C 80 80 64 */	lis r4, lit_531@ha /* 0x80644034@ha */
/* 8042A6C8  38 60 00 01 */	li r3, 1
/* 8042A6CC  C0 24 40 34 */	lfs f1, lit_531@l(r4)  /* 0x80644034@l */
/* 8042A6D0  FC 40 08 90 */	fmr f2, f1
/* 8042A6D4  FC 60 08 90 */	fmr f3, f1
/* 8042A6D8  4B FE 1D 15 */	bl Matrix_scale
/* 8042A6DC  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 8042A6E0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042A6E4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042A6E8  38 7F 00 08 */	addi r3, r31, 8
/* 8042A6EC  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8042A6F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8042A6F4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042A6F8  4B FE 2C DD */	bl _Matrix_to_Mtx_new
/* 8042A6FC  3C A0 80 43 */	lis r5, aHC_DrawClockBefore@ha /* 0x8042A444@ha */
/* 8042A700  3C 80 80 43 */	lis r4, aHC_DrawClockAfter@ha /* 0x8042A480@ha */
/* 8042A704  90 7F 00 04 */	stw r3, 4(r31)
/* 8042A708  38 C5 A4 44 */	addi r6, r5, aHC_DrawClockBefore@l /* 0x8042A444@l */
/* 8042A70C  38 E4 A4 80 */	addi r7, r4, aHC_DrawClockAfter@l /* 0x8042A480@l */
/* 8042A710  7F 83 E3 78 */	mr r3, r28
/* 8042A714  7F C5 F3 78 */	mr r5, r30
/* 8042A718  7F 68 DB 78 */	mr r8, r27
/* 8042A71C  38 9B 01 8C */	addi r4, r27, 0x18c
/* 8042A720  4B F4 70 19 */	bl cKF_Si3_draw_R_SV
/* 8042A724  39 61 00 20 */	addi r11, r1, 0x20
/* 8042A728  4B C7 07 F1 */	bl func_8009AF18
/* 8042A72C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042A730  7C 08 03 A6 */	mtlr r0
/* 8042A734  38 21 00 20 */	addi r1, r1, 0x20
/* 8042A738  4E 80 00 20 */	blr 
