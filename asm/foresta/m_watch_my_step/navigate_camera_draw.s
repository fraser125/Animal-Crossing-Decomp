lbl_803F5AD0:
/* 803F5AD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F5AD4  7C 08 02 A6 */	mflr r0
/* 803F5AD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F5ADC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F5AE0  4B CA 53 F1 */	bl func_8009AED0
/* 803F5AE4  83 C3 00 00 */	lwz r30, 0(r3)
/* 803F5AE8  3C 60 81 17 */	lis r3, S_navigate@ha /* 0x81171588@ha */
/* 803F5AEC  3B E3 15 88 */	addi r31, r3, S_navigate@l /* 0x81171588@l */
/* 803F5AF0  80 7E 02 D4 */	lwz r3, 0x2d4(r30)
/* 803F5AF4  3B A3 FF C0 */	addi r29, r3, -64
/* 803F5AF8  93 BE 02 D4 */	stw r29, 0x2d4(r30)
/* 803F5AFC  88 1F 00 07 */	lbz r0, 7(r31)
/* 803F5B00  28 00 00 00 */	cmplwi r0, 0
/* 803F5B04  41 82 01 A8 */	beq lbl_803F5CAC
/* 803F5B08  3C 60 80 64 */	lis r3, lit_630@ha /* 0x806433A0@ha */
/* 803F5B0C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 803F5B10  C0 23 33 A0 */	lfs f1, lit_630@l(r3)  /* 0x806433A0@l */
/* 803F5B14  28 1D 00 00 */	cmplwi r29, 0
/* 803F5B18  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F5B1C  FC 00 00 1E */	fctiwz f0, f0
/* 803F5B20  D8 01 00 08 */	stfd f0, 8(r1)
/* 803F5B24  83 81 00 0C */	lwz r28, 0xc(r1)
/* 803F5B28  41 82 00 28 */	beq lbl_803F5B50
/* 803F5B2C  7F A3 EB 78 */	mr r3, r29
/* 803F5B30  4B FB A5 B1 */	bl mFont_CulcOrthoMatrix
/* 803F5B34  80 9E 02 F0 */	lwz r4, 0x2f0(r30)
/* 803F5B38  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 803F5B3C  38 03 00 07 */	addi r0, r3, 0x0007 /* 0xDA380007@l */
/* 803F5B40  38 64 00 08 */	addi r3, r4, 8
/* 803F5B44  90 7E 02 F0 */	stw r3, 0x2f0(r30)
/* 803F5B48  90 04 00 00 */	stw r0, 0(r4)
/* 803F5B4C  93 A4 00 04 */	stw r29, 4(r4)
lbl_803F5B50:
/* 803F5B50  3C 80 80 64 */	lis r4, lit_623@ha /* 0x80643384@ha */
/* 803F5B54  38 60 00 00 */	li r3, 0
/* 803F5B58  C0 24 33 84 */	lfs f1, lit_623@l(r4)  /* 0x80643384@l */
/* 803F5B5C  FC 40 08 90 */	fmr f2, f1
/* 803F5B60  FC 60 08 90 */	fmr f3, f1
/* 803F5B64  48 01 68 89 */	bl Matrix_scale
/* 803F5B68  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803F5B6C  83 BE 02 F0 */	lwz r29, 0x2f0(r30)
/* 803F5B70  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803F5B74  7F C3 F3 78 */	mr r3, r30
/* 803F5B78  90 1D 00 00 */	stw r0, 0(r29)
/* 803F5B7C  48 01 78 59 */	bl _Matrix_to_Mtx_new
/* 803F5B80  90 7D 00 04 */	stw r3, 4(r29)
/* 803F5B84  57 89 06 3E */	clrlwi r9, r28, 0x18
/* 803F5B88  3C 00 DE 00 */	lis r0, 0xde00
/* 803F5B8C  3C 60 80 EE */	lis r3, fki_win_mode@ha /* 0x80EE5018@ha */
/* 803F5B90  90 1D 00 08 */	stw r0, 8(r29)
/* 803F5B94  38 83 50 18 */	addi r4, r3, fki_win_mode@l /* 0x80EE5018@l */
/* 803F5B98  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 803F5B9C  65 2B 28 28 */	oris r11, r9, 0x2828
/* 803F5BA0  90 9D 00 0C */	stw r4, 0xc(r29)
/* 803F5BA4  39 43 00 FF */	addi r10, r3, 0x00FF /* 0xFA0000FF@l */
/* 803F5BA8  3D 00 80 ED */	lis r8, cam_win_winT_model@ha /* 0x80ECD7E0@ha */
/* 803F5BAC  65 27 F5 F5 */	oris r7, r9, 0xf5f5
/* 803F5BB0  91 5D 00 10 */	stw r10, 0x10(r29)
/* 803F5BB4  61 6B 8C 00 */	ori r11, r11, 0x8c00
/* 803F5BB8  3C C0 80 ED */	lis r6, cam_win_cT_model@ha /* 0x80ECD850@ha */
/* 803F5BBC  65 2C FF FF */	oris r12, r9, 0xffff
/* 803F5BC0  91 7D 00 14 */	stw r11, 0x14(r29)
/* 803F5BC4  3C A0 80 ED */	lis r5, cam_win_mojiT_model@ha /* 0x80ECD890@ha */
/* 803F5BC8  65 24 1E A5 */	oris r4, r9, 0x1ea5
/* 803F5BCC  3C 60 80 ED */	lis r3, cam_win_yajirushi_model@ha /* 0x80ECD740@ha */
/* 803F5BD0  90 1D 00 18 */	stw r0, 0x18(r29)
/* 803F5BD4  39 08 D7 E0 */	addi r8, r8, cam_win_winT_model@l /* 0x80ECD7E0@l */
/* 803F5BD8  60 E7 1E 00 */	ori r7, r7, 0x1e00
/* 803F5BDC  38 C6 D8 50 */	addi r6, r6, cam_win_cT_model@l /* 0x80ECD850@l */
/* 803F5BE0  91 1D 00 1C */	stw r8, 0x1c(r29)
/* 803F5BE4  61 8C FF 00 */	ori r12, r12, 0xff00
/* 803F5BE8  38 A5 D8 90 */	addi r5, r5, cam_win_mojiT_model@l /* 0x80ECD890@l */
/* 803F5BEC  60 84 1E 00 */	ori r4, r4, 0x1e00
/* 803F5BF0  91 5D 00 20 */	stw r10, 0x20(r29)
/* 803F5BF4  38 63 D7 40 */	addi r3, r3, cam_win_yajirushi_model@l /* 0x80ECD740@l */
/* 803F5BF8  90 FD 00 24 */	stw r7, 0x24(r29)
/* 803F5BFC  90 1D 00 28 */	stw r0, 0x28(r29)
/* 803F5C00  90 DD 00 2C */	stw r6, 0x2c(r29)
/* 803F5C04  91 5D 00 30 */	stw r10, 0x30(r29)
/* 803F5C08  91 9D 00 34 */	stw r12, 0x34(r29)
/* 803F5C0C  90 1D 00 38 */	stw r0, 0x38(r29)
/* 803F5C10  90 BD 00 3C */	stw r5, 0x3c(r29)
/* 803F5C14  91 5D 00 40 */	stw r10, 0x40(r29)
/* 803F5C18  90 9D 00 44 */	stw r4, 0x44(r29)
/* 803F5C1C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 803F5C20  90 7D 00 4C */	stw r3, 0x4c(r29)
/* 803F5C24  3B BD 00 50 */	addi r29, r29, 0x50
/* 803F5C28  88 7F 00 07 */	lbz r3, 7(r31)
/* 803F5C2C  28 03 00 02 */	cmplwi r3, 2
/* 803F5C30  40 82 00 78 */	bne lbl_803F5CA8
/* 803F5C34  91 5D 00 00 */	stw r10, 0(r29)
/* 803F5C38  3D 00 80 ED */	lis r8, elc_win_winT_model@ha /* 0x80ECD8D8@ha */
/* 803F5C3C  65 27 1E 00 */	oris r7, r9, 0x1e00
/* 803F5C40  3C C0 80 ED */	lis r6, elc_win_zT_model@ha /* 0x80ECD940@ha */
/* 803F5C44  91 7D 00 04 */	stw r11, 4(r29)
/* 803F5C48  65 25 D7 E1 */	oris r5, r9, 0xd7e1
/* 803F5C4C  3C 80 80 ED */	lis r4, elc_win_moji_model@ha /* 0x80ECD798@ha */
/* 803F5C50  3C 60 80 ED */	lis r3, elc_win_moji2T_model@ha /* 0x80ECD990@ha */
/* 803F5C54  90 1D 00 08 */	stw r0, 8(r29)
/* 803F5C58  39 08 D8 D8 */	addi r8, r8, elc_win_winT_model@l /* 0x80ECD8D8@l */
/* 803F5C5C  60 E7 32 00 */	ori r7, r7, 0x3200
/* 803F5C60  38 C6 D9 40 */	addi r6, r6, elc_win_zT_model@l /* 0x80ECD940@l */
/* 803F5C64  91 1D 00 0C */	stw r8, 0xc(r29)
/* 803F5C68  60 A5 FF 00 */	ori r5, r5, 0xff00
/* 803F5C6C  38 84 D7 98 */	addi r4, r4, elc_win_moji_model@l /* 0x80ECD798@l */
/* 803F5C70  38 63 D9 90 */	addi r3, r3, elc_win_moji2T_model@l /* 0x80ECD990@l */
/* 803F5C74  91 5D 00 10 */	stw r10, 0x10(r29)
/* 803F5C78  90 FD 00 14 */	stw r7, 0x14(r29)
/* 803F5C7C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 803F5C80  90 DD 00 1C */	stw r6, 0x1c(r29)
/* 803F5C84  91 5D 00 20 */	stw r10, 0x20(r29)
/* 803F5C88  90 BD 00 24 */	stw r5, 0x24(r29)
/* 803F5C8C  90 1D 00 28 */	stw r0, 0x28(r29)
/* 803F5C90  90 9D 00 2C */	stw r4, 0x2c(r29)
/* 803F5C94  91 5D 00 30 */	stw r10, 0x30(r29)
/* 803F5C98  91 9D 00 34 */	stw r12, 0x34(r29)
/* 803F5C9C  90 1D 00 38 */	stw r0, 0x38(r29)
/* 803F5CA0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 803F5CA4  3B BD 00 40 */	addi r29, r29, 0x40
lbl_803F5CA8:
/* 803F5CA8  93 BE 02 F0 */	stw r29, 0x2f0(r30)
lbl_803F5CAC:
/* 803F5CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F5CB0  4B CA 52 6D */	bl func_8009AF1C
/* 803F5CB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F5CB8  7C 08 03 A6 */	mtlr r0
/* 803F5CBC  38 21 00 20 */	addi r1, r1, 0x20
/* 803F5CC0  4E 80 00 20 */	blr 
