lbl_805BDAF0:
/* 805BDAF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BDAF4  7C 08 02 A6 */	mflr r0
/* 805BDAF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BDAFC  39 61 00 30 */	addi r11, r1, 0x30
/* 805BDB00  4B AD D3 C5 */	bl func_8009AEC4
/* 805BDB04  2C 05 00 07 */	cmpwi r5, 7
/* 805BDB08  83 C3 00 00 */	lwz r30, 0(r3)
/* 805BDB0C  7D 1D 43 78 */	mr r29, r8
/* 805BDB10  40 82 00 E0 */	bne lbl_805BDBF0
/* 805BDB14  7F C3 F3 78 */	mr r3, r30
/* 805BDB18  4B E4 F8 BD */	bl _Matrix_to_Mtx_new
/* 805BDB1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BDB20  41 82 00 D0 */	beq lbl_805BDBF0
/* 805BDB24  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064AB60@ha */
/* 805BDB28  C0 5D 02 C8 */	lfs f2, 0x2c8(r29)
/* 805BDB2C  C0 03 AB 60 */	lfs f0, lit_488@l(r3)  /* 0x8064AB60@l */
/* 805BDB30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BDB34  40 81 00 38 */	ble lbl_805BDB6C
/* 805BDB38  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064AB50@ha */
/* 805BDB3C  3C 80 80 65 */	lis r4, lit_686@ha /* 0x8064AB84@ha */
/* 805BDB40  C0 03 AB 50 */	lfs f0, lit_462@l(r3)  /* 0x8064AB50@l */
/* 805BDB44  3B 60 00 FF */	li r27, 0xff
/* 805BDB48  C0 24 AB 84 */	lfs f1, lit_686@l(r4)  /* 0x8064AB84@l */
/* 805BDB4C  3B 40 00 FF */	li r26, 0xff
/* 805BDB50  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805BDB54  3B 20 00 DC */	li r25, 0xdc
/* 805BDB58  EC 01 00 2A */	fadds f0, f1, f0
/* 805BDB5C  FC 00 00 1E */	fctiwz f0, f0
/* 805BDB60  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BDB64  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805BDB68  48 00 00 14 */	b lbl_805BDB7C
lbl_805BDB6C:
/* 805BDB6C  3B 80 00 00 */	li r28, 0
/* 805BDB70  3B 60 00 00 */	li r27, 0
/* 805BDB74  3B 40 00 00 */	li r26, 0
/* 805BDB78  3B 20 00 00 */	li r25, 0
lbl_805BDB7C:
/* 805BDB7C  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805BDB80  7F C3 F3 78 */	mr r3, r30
/* 805BDB84  20 00 00 03 */	subfic r0, r0, 3
/* 805BDB88  7C 00 00 34 */	cntlzw r0, r0
/* 805BDB8C  54 1D D9 7E */	srwi r29, r0, 5
/* 805BDB90  4B E2 75 C9 */	bl _texture_z_light_fog_prim_xlu
/* 805BDB94  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805BDB98  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 805BDB9C  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805BDBA0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805BDBA4  90 66 00 00 */	stw r3, 0(r6)
/* 805BDBA8  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805BDBAC  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805BDBB0  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805BDBB4  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805BDBB8  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C7008@ha */
/* 805BDBBC  90 06 00 04 */	stw r0, 4(r6)
/* 805BDBC0  3C 80 DE 00 */	lis r4, 0xde00
/* 805BDBC4  57 A0 10 3A */	slwi r0, r29, 2
/* 805BDBC8  38 63 70 08 */	addi r3, r3, mdl@l /* 0x806C7008@l */
/* 805BDBCC  90 A6 00 08 */	stw r5, 8(r6)
/* 805BDBD0  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805BDBD4  38 C6 00 10 */	addi r6, r6, 0x10
/* 805BDBD8  7C C5 33 78 */	mr r5, r6
/* 805BDBDC  90 86 00 00 */	stw r4, 0(r6)
/* 805BDBE0  38 C6 00 08 */	addi r6, r6, 8
/* 805BDBE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BDBE8  90 05 00 04 */	stw r0, 4(r5)
/* 805BDBEC  90 DE 02 E0 */	stw r6, 0x2e0(r30)
lbl_805BDBF0:
/* 805BDBF0  38 60 00 01 */	li r3, 1
/* 805BDBF4  39 61 00 30 */	addi r11, r1, 0x30
/* 805BDBF8  4B AD D3 19 */	bl func_8009AF10
/* 805BDBFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BDC00  7C 08 03 A6 */	mtlr r0
/* 805BDC04  38 21 00 30 */	addi r1, r1, 0x30
/* 805BDC08  4E 80 00 20 */	blr 
