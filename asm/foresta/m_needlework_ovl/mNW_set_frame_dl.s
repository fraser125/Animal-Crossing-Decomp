lbl_805E9F74:
/* 805E9F74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E9F78  7C 08 02 A6 */	mflr r0
/* 805E9F7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E9F80  39 61 00 40 */	addi r11, r1, 0x40
/* 805E9F84  4B AB 0F 3D */	bl func_8009AEC0
/* 805E9F88  3C E0 80 65 */	lis r7, lit_542@ha /* 0x8064B690@ha */
/* 805E9F8C  3C C0 80 65 */	lis r6, lit_543@ha /* 0x8064B694@ha */
/* 805E9F90  C0 27 B6 90 */	lfs f1, lit_542@l(r7)  /* 0x8064B690@l */
/* 805E9F94  7C 7C 1B 78 */	mr r28, r3
/* 805E9F98  83 E4 00 00 */	lwz r31, 0(r4)
/* 805E9F9C  7C B8 2B 78 */	mr r24, r5
/* 805E9FA0  FC 40 08 90 */	fmr f2, f1
/* 805E9FA4  C0 66 B6 94 */	lfs f3, lit_543@l(r6)  /* 0x8064B694@l */
/* 805E9FA8  38 60 00 00 */	li r3, 0
/* 805E9FAC  4B E2 24 41 */	bl Matrix_scale
/* 805E9FB0  3C 60 80 65 */	lis r3, lit_544@ha /* 0x8064B698@ha */
/* 805E9FB4  C0 38 00 18 */	lfs f1, 0x18(r24)
/* 805E9FB8  C0 63 B6 98 */	lfs f3, lit_544@l(r3)  /* 0x8064B698@l */
/* 805E9FBC  38 60 00 01 */	li r3, 1
/* 805E9FC0  C0 58 00 1C */	lfs f2, 0x1c(r24)
/* 805E9FC4  4B E2 23 3D */	bl Matrix_translate
/* 805E9FC8  80 18 00 38 */	lwz r0, 0x38(r24)
/* 805E9FCC  2C 00 00 01 */	cmpwi r0, 1
/* 805E9FD0  40 82 00 28 */	bne lbl_805E9FF8
/* 805E9FD4  3C 60 80 65 */	lis r3, lit_574@ha /* 0x8064B69C@ha */
/* 805E9FD8  3C A0 80 65 */	lis r5, lit_650@ha /* 0x8064B6A0@ha */
/* 805E9FDC  38 83 B6 9C */	addi r4, r3, lit_574@l /* 0x8064B69C@l */
/* 805E9FE0  C0 25 B6 A0 */	lfs f1, lit_650@l(r5)  /* 0x8064B6A0@l */
/* 805E9FE4  C0 44 00 00 */	lfs f2, 0(r4)
/* 805E9FE8  38 60 00 01 */	li r3, 1
/* 805E9FEC  FC 60 10 90 */	fmr f3, f2
/* 805E9FF0  4B E2 23 11 */	bl Matrix_translate
/* 805E9FF4  48 00 00 2C */	b lbl_805EA020
lbl_805E9FF8:
/* 805E9FF8  2C 00 00 00 */	cmpwi r0, 0
/* 805E9FFC  40 82 00 24 */	bne lbl_805EA020
/* 805EA000  3C 60 80 65 */	lis r3, lit_574@ha /* 0x8064B69C@ha */
/* 805EA004  3C A0 80 65 */	lis r5, lit_651@ha /* 0x8064B6A4@ha */
/* 805EA008  38 83 B6 9C */	addi r4, r3, lit_574@l /* 0x8064B69C@l */
/* 805EA00C  C0 25 B6 A4 */	lfs f1, lit_651@l(r5)  /* 0x8064B6A4@l */
/* 805EA010  C0 44 00 00 */	lfs f2, 0(r4)
/* 805EA014  38 60 00 01 */	li r3, 1
/* 805EA018  FC 60 10 90 */	fmr f3, f2
/* 805EA01C  4B E2 22 E5 */	bl Matrix_translate
lbl_805EA020:
/* 805EA020  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EA024  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805EA028  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EA02C  7F E3 FB 78 */	mr r3, r31
/* 805EA030  90 1D 00 00 */	stw r0, 0(r29)
/* 805EA034  4B E2 33 A1 */	bl _Matrix_to_Mtx_new
/* 805EA038  90 7D 00 04 */	stw r3, 4(r29)
/* 805EA03C  3C 60 DE 00 */	lis r3, 0xde00
/* 805EA040  3C A0 80 B1 */	lis r5, needlework_before_model@ha /* 0x80B0F400@ha */
/* 805EA044  3C 80 80 65 */	lis r4, lit_652@ha /* 0x8064B6A8@ha */
/* 805EA048  90 7D 00 08 */	stw r3, 8(r29)
/* 805EA04C  38 05 F4 00 */	addi r0, r5, needlework_before_model@l /* 0x80B0F400@l */
/* 805EA050  C0 44 B6 A8 */	lfs f2, lit_652@l(r4)  /* 0x8064B6A8@l */
/* 805EA054  3F C0 80 B1 */	lis r30, inv_original_w_model_before@ha /* 0x80B0F420@ha */
/* 805EA058  90 1D 00 0C */	stw r0, 0xc(r29)
/* 805EA05C  3F 60 80 B1 */	lis r27, inv_original_w1T_model@ha /* 0x80B0F640@ha */
/* 805EA060  3F 20 80 B1 */	lis r25, inv_original_w2T_model@ha /* 0x80B0F678@ha */
/* 805EA064  3F 40 80 B1 */	lis r26, inv_original_w3T_model@ha /* 0x80B0F6B0@ha */
/* 805EA068  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805EA06C  3D 80 80 B1 */	lis r12, inv_original_w4T_model@ha /* 0x80B0F6E8@ha */
/* 805EA070  3D 60 80 B1 */	lis r11, inv_original_w5T_model@ha /* 0x80B0F720@ha */
/* 805EA074  3D 40 80 B1 */	lis r10, inv_original_w6T_model@ha /* 0x80B0F758@ha */
/* 805EA078  C0 25 09 34 */	lfs f1, 0x934(r5)
/* 805EA07C  3D 20 80 B1 */	lis r9, inv_original_w7T_model@ha /* 0x80B0F790@ha */
/* 805EA080  C0 05 09 38 */	lfs f0, 0x938(r5)
/* 805EA084  3D 00 80 B1 */	lis r8, inv_original_w8T_model@ha /* 0x80B0F7C8@ha */
/* 805EA088  FC 20 08 50 */	fneg f1, f1
/* 805EA08C  3C E0 80 B1 */	lis r7, inv_original_w9_model@ha /* 0x80B0F458@ha */
/* 805EA090  FC 00 00 50 */	fneg f0, f0
/* 805EA094  3C C0 80 B1 */	lis r6, inv_original_ueT_model@ha /* 0x80B0F800@ha */
/* 805EA098  3C A0 80 B1 */	lis r5, inv_original_waku_model@ha /* 0x80B0F490@ha */
/* 805EA09C  3C 80 80 B1 */	lis r4, inv_original_mb_before_model@ha /* 0x80B0F4F8@ha */
/* 805EA0A0  EC 22 00 72 */	fmuls f1, f2, f1
/* 805EA0A4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 805EA0A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EA0AC  3B DE F4 20 */	addi r30, r30, inv_original_w_model_before@l /* 0x80B0F420@l */
/* 805EA0B0  38 1B F6 40 */	addi r0, r27, inv_original_w1T_model@l /* 0x80B0F640@l */
/* 805EA0B4  93 DD 00 14 */	stw r30, 0x14(r29)
/* 805EA0B8  FC 20 08 1E */	fctiwz f1, f1
/* 805EA0BC  3B 39 F6 78 */	addi r25, r25, inv_original_w2T_model@l /* 0x80B0F678@l */
/* 805EA0C0  FC 00 00 1E */	fctiwz f0, f0
/* 805EA0C4  3B 5A F6 B0 */	addi r26, r26, inv_original_w3T_model@l /* 0x80B0F6B0@l */
/* 805EA0C8  39 8C F6 E8 */	addi r12, r12, inv_original_w4T_model@l /* 0x80B0F6E8@l */
/* 805EA0CC  39 6B F7 20 */	addi r11, r11, inv_original_w5T_model@l /* 0x80B0F720@l */
/* 805EA0D0  D8 21 00 08 */	stfd f1, 8(r1)
/* 805EA0D4  39 4A F7 58 */	addi r10, r10, inv_original_w6T_model@l /* 0x80B0F758@l */
/* 805EA0D8  39 29 F7 90 */	addi r9, r9, inv_original_w7T_model@l /* 0x80B0F790@l */
/* 805EA0DC  39 08 F7 C8 */	addi r8, r8, inv_original_w8T_model@l /* 0x80B0F7C8@l */
/* 805EA0E0  83 01 00 0C */	lwz r24, 0xc(r1)
/* 805EA0E4  38 E7 F4 58 */	addi r7, r7, inv_original_w9_model@l /* 0x80B0F458@l */
/* 805EA0E8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805EA0EC  38 C6 F8 00 */	addi r6, r6, inv_original_ueT_model@l /* 0x80B0F800@l */
/* 805EA0F0  57 1B 52 2A */	rlwinm r27, r24, 0xa, 8, 0x15
/* 805EA0F4  38 A5 F4 90 */	addi r5, r5, inv_original_waku_model@l /* 0x80B0F490@l */
/* 805EA0F8  67 7E F2 00 */	oris r30, r27, 0xf200
/* 805EA0FC  83 01 00 14 */	lwz r24, 0x14(r1)
/* 805EA100  63 DE 00 1F */	ori r30, r30, 0x1f
/* 805EA104  38 84 F4 F8 */	addi r4, r4, inv_original_mb_before_model@l /* 0x80B0F4F8@l */
/* 805EA108  57 1B 52 2A */	rlwinm r27, r24, 0xa, 8, 0x15
/* 805EA10C  93 DD 00 18 */	stw r30, 0x18(r29)
/* 805EA110  67 7B 80 00 */	oris r27, r27, 0x8000
/* 805EA114  3B C0 00 00 */	li r30, 0
/* 805EA118  63 7B 00 1F */	ori r27, r27, 0x1f
/* 805EA11C  93 7D 00 1C */	stw r27, 0x1c(r29)
/* 805EA120  3B 60 00 00 */	li r27, 0
/* 805EA124  90 7D 00 20 */	stw r3, 0x20(r29)
/* 805EA128  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805EA12C  90 7D 00 28 */	stw r3, 0x28(r29)
/* 805EA130  93 3D 00 2C */	stw r25, 0x2c(r29)
/* 805EA134  90 7D 00 30 */	stw r3, 0x30(r29)
/* 805EA138  93 5D 00 34 */	stw r26, 0x34(r29)
/* 805EA13C  90 7D 00 38 */	stw r3, 0x38(r29)
/* 805EA140  91 9D 00 3C */	stw r12, 0x3c(r29)
/* 805EA144  90 7D 00 40 */	stw r3, 0x40(r29)
/* 805EA148  91 7D 00 44 */	stw r11, 0x44(r29)
/* 805EA14C  90 7D 00 48 */	stw r3, 0x48(r29)
/* 805EA150  91 5D 00 4C */	stw r10, 0x4c(r29)
/* 805EA154  90 7D 00 50 */	stw r3, 0x50(r29)
/* 805EA158  91 3D 00 54 */	stw r9, 0x54(r29)
/* 805EA15C  90 7D 00 58 */	stw r3, 0x58(r29)
/* 805EA160  91 1D 00 5C */	stw r8, 0x5c(r29)
/* 805EA164  90 7D 00 60 */	stw r3, 0x60(r29)
/* 805EA168  90 FD 00 64 */	stw r7, 0x64(r29)
/* 805EA16C  90 7D 00 68 */	stw r3, 0x68(r29)
/* 805EA170  90 DD 00 6C */	stw r6, 0x6c(r29)
/* 805EA174  90 7D 00 70 */	stw r3, 0x70(r29)
/* 805EA178  90 BD 00 74 */	stw r5, 0x74(r29)
/* 805EA17C  90 7D 00 78 */	stw r3, 0x78(r29)
/* 805EA180  90 9D 00 7C */	stw r4, 0x7c(r29)
/* 805EA184  3B BD 00 80 */	addi r29, r29, 0x80
lbl_805EA188:
/* 805EA188  7F 83 E3 78 */	mr r3, r28
/* 805EA18C  7F C4 F3 78 */	mr r4, r30
/* 805EA190  4B FF F5 1D */	bl mNW_check_hide_flg
/* 805EA194  2C 03 00 00 */	cmpwi r3, 0
/* 805EA198  40 82 00 64 */	bne lbl_805EA1FC
/* 805EA19C  3C 80 F0 8F */	lis r4, 0xF08F /* 0xF08F4010@ha */
/* 805EA1A0  7F 83 E3 78 */	mr r3, r28
/* 805EA1A4  38 04 40 10 */	addi r0, r4, 0x4010 /* 0xF08F4010@l */
/* 805EA1A8  7F C4 F3 78 */	mr r4, r30
/* 805EA1AC  90 1D 00 00 */	stw r0, 0(r29)
/* 805EA1B0  4B FF F6 F5 */	bl mNW_get_image_pal
/* 805EA1B4  90 7D 00 04 */	stw r3, 4(r29)
/* 805EA1B8  3C 60 FD 44 */	lis r3, 0xFD44 /* 0xFD441C1F@ha */
/* 805EA1BC  38 03 1C 1F */	addi r0, r3, 0x1C1F /* 0xFD441C1F@l */
/* 805EA1C0  7F 83 E3 78 */	mr r3, r28
/* 805EA1C4  90 1D 00 08 */	stw r0, 8(r29)
/* 805EA1C8  7F C4 F3 78 */	mr r4, r30
/* 805EA1CC  4B FF F7 61 */	bl mNW_get_image_texture
/* 805EA1D0  3C 80 D2 F1 */	lis r4, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805EA1D4  90 7D 00 0C */	stw r3, 0xc(r29)
/* 805EA1D8  38 04 FA 00 */	addi r0, r4, 0xFA00 /* 0xD2F0FA00@l */
/* 805EA1DC  3C 60 80 6D */	lis r3, gfx_table_600@ha /* 0x806CE264@ha */
/* 805EA1E0  90 1D 00 10 */	stw r0, 0x10(r29)
/* 805EA1E4  3C 00 DE 00 */	lis r0, 0xde00
/* 805EA1E8  38 63 E2 64 */	addi r3, r3, gfx_table_600@l /* 0x806CE264@l */
/* 805EA1EC  90 1D 00 18 */	stw r0, 0x18(r29)
/* 805EA1F0  7C 03 D8 2E */	lwzx r0, r3, r27
/* 805EA1F4  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 805EA1F8  3B BD 00 20 */	addi r29, r29, 0x20
lbl_805EA1FC:
/* 805EA1FC  3B DE 00 01 */	addi r30, r30, 1
/* 805EA200  3B 7B 00 04 */	addi r27, r27, 4
/* 805EA204  2C 1E 00 08 */	cmpwi r30, 8
/* 805EA208  41 80 FF 80 */	blt lbl_805EA188
/* 805EA20C  7F A4 EB 78 */	mr r4, r29
/* 805EA210  3C 00 DE 00 */	lis r0, 0xde00
/* 805EA214  3C 60 80 B1 */	lis r3, inv_original_f_model@ha /* 0x80B0F5D8@ha */
/* 805EA218  90 1D 00 00 */	stw r0, 0(r29)
/* 805EA21C  38 03 F5 D8 */	addi r0, r3, inv_original_f_model@l /* 0x80B0F5D8@l */
/* 805EA220  3B BD 00 08 */	addi r29, r29, 8
/* 805EA224  90 04 00 04 */	stw r0, 4(r4)
/* 805EA228  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805EA22C  39 61 00 40 */	addi r11, r1, 0x40
/* 805EA230  4B AB 0C DD */	bl func_8009AF0C
/* 805EA234  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EA238  7C 08 03 A6 */	mtlr r0
/* 805EA23C  38 21 00 40 */	addi r1, r1, 0x40
/* 805EA240  4E 80 00 20 */	blr 
