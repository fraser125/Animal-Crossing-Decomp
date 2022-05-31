lbl_805EA39C:
/* 805EA39C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EA3A0  7C 08 02 A6 */	mflr r0
/* 805EA3A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EA3A8  39 61 00 40 */	addi r11, r1, 0x40
/* 805EA3AC  4B AB 0B 0D */	bl func_8009AEB8
/* 805EA3B0  3C E0 80 65 */	lis r7, lit_542@ha /* 0x8064B690@ha */
/* 805EA3B4  7C 9B 23 78 */	mr r27, r4
/* 805EA3B8  C0 27 B6 90 */	lfs f1, lit_542@l(r7)  /* 0x8064B690@l */
/* 805EA3BC  3C C0 80 65 */	lis r6, lit_543@ha /* 0x8064B694@ha */
/* 805EA3C0  38 86 B6 94 */	addi r4, r6, lit_543@l /* 0x8064B694@l */
/* 805EA3C4  7C 7A 1B 78 */	mr r26, r3
/* 805EA3C8  FC 40 08 90 */	fmr f2, f1
/* 805EA3CC  3C C0 80 6D */	lis r6, data_806CE250@ha /* 0x806CE250@ha */
/* 805EA3D0  83 DB 00 00 */	lwz r30, 0(r27)
/* 805EA3D4  7C B6 2B 78 */	mr r22, r5
/* 805EA3D8  C0 64 00 00 */	lfs f3, 0(r4)
/* 805EA3DC  3B E6 E2 50 */	addi r31, r6, data_806CE250@l /* 0x806CE250@l */
/* 805EA3E0  38 60 00 00 */	li r3, 0
/* 805EA3E4  4B E2 20 09 */	bl Matrix_scale
/* 805EA3E8  3C 60 80 65 */	lis r3, lit_544@ha /* 0x8064B698@ha */
/* 805EA3EC  C0 36 00 18 */	lfs f1, 0x18(r22)
/* 805EA3F0  C0 63 B6 98 */	lfs f3, lit_544@l(r3)  /* 0x8064B698@l */
/* 805EA3F4  38 60 00 01 */	li r3, 1
/* 805EA3F8  C0 56 00 1C */	lfs f2, 0x1c(r22)
/* 805EA3FC  4B E2 1F 05 */	bl Matrix_translate
/* 805EA400  80 16 00 38 */	lwz r0, 0x38(r22)
/* 805EA404  2C 00 00 05 */	cmpwi r0, 5
/* 805EA408  40 80 00 30 */	bge lbl_805EA438
/* 805EA40C  2C 00 00 03 */	cmpwi r0, 3
/* 805EA410  40 80 00 08 */	bge lbl_805EA418
/* 805EA414  48 00 00 24 */	b lbl_805EA438
lbl_805EA418:
/* 805EA418  3C C0 80 65 */	lis r6, lit_782@ha /* 0x8064B6B4@ha */
/* 805EA41C  3C A0 80 65 */	lis r5, lit_783@ha /* 0x8064B6B8@ha */
/* 805EA420  3C 80 80 65 */	lis r4, lit_574@ha /* 0x8064B69C@ha */
/* 805EA424  C0 26 B6 B4 */	lfs f1, lit_782@l(r6)  /* 0x8064B6B4@l */
/* 805EA428  C0 45 B6 B8 */	lfs f2, lit_783@l(r5)  /* 0x8064B6B8@l */
/* 805EA42C  38 60 00 01 */	li r3, 1
/* 805EA430  C0 64 B6 9C */	lfs f3, lit_574@l(r4)  /* 0x8064B69C@l */
/* 805EA434  4B E2 1E CD */	bl Matrix_translate
lbl_805EA438:
/* 805EA438  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805EA43C  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 805EA440  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805EA444  7F C3 F3 78 */	mr r3, r30
/* 805EA448  90 1C 00 00 */	stw r0, 0(r28)
/* 805EA44C  4B E2 2F 89 */	bl _Matrix_to_Mtx_new
/* 805EA450  90 7C 00 04 */	stw r3, 4(r28)
/* 805EA454  3C A0 DE 00 */	lis r5, 0xde00
/* 805EA458  3C 80 80 B1 */	lis r4, needlework_before_model@ha /* 0x80B0F400@ha */
/* 805EA45C  3C 60 80 65 */	lis r3, lit_652@ha /* 0x8064B6A8@ha */
/* 805EA460  90 BC 00 08 */	stw r5, 8(r28)
/* 805EA464  38 04 F4 00 */	addi r0, r4, needlework_before_model@l /* 0x80B0F400@l */
/* 805EA468  38 C3 B6 A8 */	addi r6, r3, lit_652@l /* 0x8064B6A8@l */
/* 805EA46C  3C 80 80 B1 */	lis r4, inv_original2_w1T_model@ha /* 0x80B109A8@ha */
/* 805EA470  90 1C 00 0C */	stw r0, 0xc(r28)
/* 805EA474  3F A0 80 B1 */	lis r29, inv_original_w_model_before@ha /* 0x80B0F420@ha */
/* 805EA478  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EA47C  3C 60 80 B1 */	lis r3, inv_original2_w2T_model@ha /* 0x80B109E0@ha */
/* 805EA480  80 FA 00 2C */	lwz r7, 0x2c(r26)
/* 805EA484  3E E0 80 B1 */	lis r23, inv_original2_w4T_model@ha /* 0x80B10A50@ha */
/* 805EA488  3F 00 80 B1 */	lis r24, inv_original2_w5T_model@ha /* 0x80B10A88@ha */
/* 805EA48C  3D 80 80 B1 */	lis r12, inv_original2_w6T_model@ha /* 0x80B10AC0@ha */
/* 805EA490  C0 27 09 34 */	lfs f1, 0x934(r7)
/* 805EA494  3D 60 80 B1 */	lis r11, inv_original2_w7T_model@ha /* 0x80B10AF8@ha */
/* 805EA498  C0 07 09 38 */	lfs f0, 0x938(r7)
/* 805EA49C  3D 40 80 B1 */	lis r10, inv_original2_w8T_model@ha /* 0x80B10B30@ha */
/* 805EA4A0  FC 20 08 50 */	fneg f1, f1
/* 805EA4A4  3D 20 80 B1 */	lis r9, inv_original2_w9_model@ha /* 0x80B107E0@ha */
/* 805EA4A8  FC 00 00 50 */	fneg f0, f0
/* 805EA4AC  3D 00 80 B1 */	lis r8, inv_original2_ueT_model@ha /* 0x80B10B68@ha */
/* 805EA4B0  3C E0 80 B1 */	lis r7, inv_original2_waku_model@ha /* 0x80B10818@ha */
/* 805EA4B4  3C C0 80 B1 */	lis r6, inv_original_mb_before_model@ha /* 0x80B0F4F8@ha */
/* 805EA4B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 805EA4BC  90 BC 00 10 */	stw r5, 0x10(r28)
/* 805EA4C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805EA4C4  38 1D F4 20 */	addi r0, r29, inv_original_w_model_before@l /* 0x80B0F420@l */
/* 805EA4C8  3F 20 80 B1 */	lis r25, inv_original2_w3T_model@ha /* 0x80B10A18@ha */
/* 805EA4CC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 805EA4D0  FC 20 08 1E */	fctiwz f1, f1
/* 805EA4D4  38 19 0A 18 */	addi r0, r25, inv_original2_w3T_model@l /* 0x80B10A18@l */
/* 805EA4D8  FC 00 00 1E */	fctiwz f0, f0
/* 805EA4DC  38 84 09 A8 */	addi r4, r4, inv_original2_w1T_model@l /* 0x80B109A8@l */
/* 805EA4E0  38 63 09 E0 */	addi r3, r3, inv_original2_w2T_model@l /* 0x80B109E0@l */
/* 805EA4E4  3A F7 0A 50 */	addi r23, r23, inv_original2_w4T_model@l /* 0x80B10A50@l */
/* 805EA4E8  D8 21 00 08 */	stfd f1, 8(r1)
/* 805EA4EC  3B 18 0A 88 */	addi r24, r24, inv_original2_w5T_model@l /* 0x80B10A88@l */
/* 805EA4F0  39 8C 0A C0 */	addi r12, r12, inv_original2_w6T_model@l /* 0x80B10AC0@l */
/* 805EA4F4  39 6B 0A F8 */	addi r11, r11, inv_original2_w7T_model@l /* 0x80B10AF8@l */
/* 805EA4F8  82 C1 00 0C */	lwz r22, 0xc(r1)
/* 805EA4FC  39 4A 0B 30 */	addi r10, r10, inv_original2_w8T_model@l /* 0x80B10B30@l */
/* 805EA500  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805EA504  39 29 07 E0 */	addi r9, r9, inv_original2_w9_model@l /* 0x80B107E0@l */
/* 805EA508  56 D9 52 2A */	rlwinm r25, r22, 0xa, 8, 0x15
/* 805EA50C  39 08 0B 68 */	addi r8, r8, inv_original2_ueT_model@l /* 0x80B10B68@l */
/* 805EA510  67 3D F2 00 */	oris r29, r25, 0xf200
/* 805EA514  82 C1 00 14 */	lwz r22, 0x14(r1)
/* 805EA518  63 BD 00 1F */	ori r29, r29, 0x1f
/* 805EA51C  38 E7 08 18 */	addi r7, r7, inv_original2_waku_model@l /* 0x80B10818@l */
/* 805EA520  56 D9 52 2A */	rlwinm r25, r22, 0xa, 8, 0x15
/* 805EA524  93 BC 00 18 */	stw r29, 0x18(r28)
/* 805EA528  67 39 80 00 */	oris r25, r25, 0x8000
/* 805EA52C  38 C6 F4 F8 */	addi r6, r6, inv_original_mb_before_model@l /* 0x80B0F4F8@l */
/* 805EA530  63 39 00 1F */	ori r25, r25, 0x1f
/* 805EA534  3B A0 00 00 */	li r29, 0
/* 805EA538  93 3C 00 1C */	stw r25, 0x1c(r28)
/* 805EA53C  3B 20 00 00 */	li r25, 0
/* 805EA540  90 BC 00 20 */	stw r5, 0x20(r28)
/* 805EA544  90 9C 00 24 */	stw r4, 0x24(r28)
/* 805EA548  90 BC 00 28 */	stw r5, 0x28(r28)
/* 805EA54C  90 7C 00 2C */	stw r3, 0x2c(r28)
/* 805EA550  90 BC 00 30 */	stw r5, 0x30(r28)
/* 805EA554  90 1C 00 34 */	stw r0, 0x34(r28)
/* 805EA558  90 BC 00 38 */	stw r5, 0x38(r28)
/* 805EA55C  92 FC 00 3C */	stw r23, 0x3c(r28)
/* 805EA560  90 BC 00 40 */	stw r5, 0x40(r28)
/* 805EA564  93 1C 00 44 */	stw r24, 0x44(r28)
/* 805EA568  90 BC 00 48 */	stw r5, 0x48(r28)
/* 805EA56C  91 9C 00 4C */	stw r12, 0x4c(r28)
/* 805EA570  90 BC 00 50 */	stw r5, 0x50(r28)
/* 805EA574  91 7C 00 54 */	stw r11, 0x54(r28)
/* 805EA578  90 BC 00 58 */	stw r5, 0x58(r28)
/* 805EA57C  91 5C 00 5C */	stw r10, 0x5c(r28)
/* 805EA580  90 BC 00 60 */	stw r5, 0x60(r28)
/* 805EA584  91 3C 00 64 */	stw r9, 0x64(r28)
/* 805EA588  90 BC 00 68 */	stw r5, 0x68(r28)
/* 805EA58C  91 1C 00 6C */	stw r8, 0x6c(r28)
/* 805EA590  90 BC 00 70 */	stw r5, 0x70(r28)
/* 805EA594  90 FC 00 74 */	stw r7, 0x74(r28)
/* 805EA598  90 BC 00 78 */	stw r5, 0x78(r28)
/* 805EA59C  90 DC 00 7C */	stw r6, 0x7c(r28)
/* 805EA5A0  3B 9C 00 80 */	addi r28, r28, 0x80
lbl_805EA5A4:
/* 805EA5A4  7F 43 D3 78 */	mr r3, r26
/* 805EA5A8  7F A4 EB 78 */	mr r4, r29
/* 805EA5AC  4B FF F1 01 */	bl mNW_check_hide_flg
/* 805EA5B0  2C 03 00 00 */	cmpwi r3, 0
/* 805EA5B4  40 82 00 60 */	bne lbl_805EA614
/* 805EA5B8  3C 80 F0 8F */	lis r4, 0xF08F /* 0xF08F4010@ha */
/* 805EA5BC  7F 43 D3 78 */	mr r3, r26
/* 805EA5C0  38 04 40 10 */	addi r0, r4, 0x4010 /* 0xF08F4010@l */
/* 805EA5C4  7F A4 EB 78 */	mr r4, r29
/* 805EA5C8  90 1C 00 00 */	stw r0, 0(r28)
/* 805EA5CC  4B FF F2 D9 */	bl mNW_get_image_pal
/* 805EA5D0  90 7C 00 04 */	stw r3, 4(r28)
/* 805EA5D4  3C 60 FD 44 */	lis r3, 0xFD44 /* 0xFD441C1F@ha */
/* 805EA5D8  38 03 1C 1F */	addi r0, r3, 0x1C1F /* 0xFD441C1F@l */
/* 805EA5DC  7F 43 D3 78 */	mr r3, r26
/* 805EA5E0  90 1C 00 08 */	stw r0, 8(r28)
/* 805EA5E4  7F A4 EB 78 */	mr r4, r29
/* 805EA5E8  4B FF F3 45 */	bl mNW_get_image_texture
/* 805EA5EC  3C 80 D2 F1 */	lis r4, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805EA5F0  90 7C 00 0C */	stw r3, 0xc(r28)
/* 805EA5F4  38 64 FA 00 */	addi r3, r4, 0xFA00 /* 0xD2F0FA00@l */
/* 805EA5F8  3C 00 DE 00 */	lis r0, 0xde00
/* 805EA5FC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 805EA600  38 7F 00 34 */	addi r3, r31, 0x34
/* 805EA604  90 1C 00 18 */	stw r0, 0x18(r28)
/* 805EA608  7C 03 C8 2E */	lwzx r0, r3, r25
/* 805EA60C  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 805EA610  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_805EA614:
/* 805EA614  3B BD 00 01 */	addi r29, r29, 1
/* 805EA618  3B 39 00 04 */	addi r25, r25, 4
/* 805EA61C  2C 1D 00 08 */	cmpwi r29, 8
/* 805EA620  41 80 FF 84 */	blt lbl_805EA5A4
/* 805EA624  7F 84 E3 78 */	mr r4, r28
/* 805EA628  3C 00 DE 00 */	lis r0, 0xde00
/* 805EA62C  3C 60 80 B1 */	lis r3, inv_original2_f_model@ha /* 0x80B10940@ha */
/* 805EA630  90 1C 00 00 */	stw r0, 0(r28)
/* 805EA634  38 03 09 40 */	addi r0, r3, inv_original2_f_model@l /* 0x80B10940@l */
/* 805EA638  3B 9C 00 08 */	addi r28, r28, 8
/* 805EA63C  90 04 00 04 */	stw r0, 4(r4)
/* 805EA640  7F 63 DB 78 */	mr r3, r27
/* 805EA644  93 9E 02 D0 */	stw r28, 0x2d0(r30)
/* 805EA648  4B FF FB FD */	bl mNW_draw_sav_mark_before
/* 805EA64C  3B BF 00 54 */	addi r29, r31, 0x54
/* 805EA650  3B 3F 00 64 */	addi r25, r31, 0x64
/* 805EA654  3A C0 00 00 */	li r22, 0
/* 805EA658  3B 80 00 00 */	li r28, 0
lbl_805EA65C:
/* 805EA65C  7F 43 D3 78 */	mr r3, r26
/* 805EA660  7E C4 B3 78 */	mr r4, r22
/* 805EA664  4B FF F0 D5 */	bl mNW_check_mark_flg
/* 805EA668  2C 03 00 00 */	cmpwi r3, 0
/* 805EA66C  41 82 00 1C */	beq lbl_805EA688
/* 805EA670  4B E2 1B 65 */	bl Matrix_push
/* 805EA674  7C 9D E2 AE */	lhax r4, r29, r28
/* 805EA678  7F 63 DB 78 */	mr r3, r27
/* 805EA67C  7C B9 E2 AE */	lhax r5, r25, r28
/* 805EA680  4B FF FC 65 */	bl mNW_draw_sav_mark
/* 805EA684  4B E2 1B 91 */	bl Matrix_pull
lbl_805EA688:
/* 805EA688  3A D6 00 01 */	addi r22, r22, 1
/* 805EA68C  3B 9C 00 02 */	addi r28, r28, 2
/* 805EA690  2C 16 00 08 */	cmpwi r22, 8
/* 805EA694  41 80 FF C8 */	blt lbl_805EA65C
/* 805EA698  39 61 00 40 */	addi r11, r1, 0x40
/* 805EA69C  4B AB 08 69 */	bl func_8009AF04
/* 805EA6A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EA6A4  7C 08 03 A6 */	mtlr r0
/* 805EA6A8  38 21 00 40 */	addi r1, r1, 0x40
/* 805EA6AC  4E 80 00 20 */	blr 
