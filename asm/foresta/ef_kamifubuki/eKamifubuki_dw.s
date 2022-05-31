lbl_80611C94:
/* 80611C94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80611C98  7C 08 02 A6 */	mflr r0
/* 80611C9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80611CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80611CA4  4B A8 92 29 */	bl func_8009AECC
/* 80611CA8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80611CAC  3C E0 80 65 */	lis r7, lit_477@ha /* 0x8064C42C@ha */
/* 80611CB0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80611CB4  3C C0 80 65 */	lis r6, lit_478@ha /* 0x8064C430@ha */
/* 80611CB8  3C A5 00 02 */	addis r5, r5, 2
/* 80611CBC  7C 7C 1B 78 */	mr r28, r3
/* 80611CC0  80 65 60 9C */	lwz r3, 0x609c(r5)
/* 80611CC4  7C 9D 23 78 */	mr r29, r4
/* 80611CC8  38 80 00 00 */	li r4, 0
/* 80611CCC  38 A0 00 0A */	li r5, 0xa
/* 80611CD0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80611CD4  A8 7C 00 00 */	lha r3, 0(r28)
/* 80611CD8  C0 27 C4 2C */	lfs f1, lit_477@l(r7)  /* 0x8064C42C@l */
/* 80611CDC  C0 46 C4 30 */	lfs f2, lit_478@l(r6)  /* 0x8064C430@l */
/* 80611CE0  7D 89 03 A6 */	mtctr r12
/* 80611CE4  4E 80 04 21 */	bctrl 
/* 80611CE8  FC 00 08 1E */	fctiwz f0, f1
/* 80611CEC  83 FD 00 00 */	lwz r31, 0(r29)
/* 80611CF0  AB 7C 00 06 */	lha r27, 6(r28)
/* 80611CF4  7F E3 FB 78 */	mr r3, r31
/* 80611CF8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80611CFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80611D00  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80611D04  4B DD 34 55 */	bl _texture_z_light_fog_prim_xlu
/* 80611D08  2C 1B 00 03 */	cmpwi r27, 3
/* 80611D0C  40 81 00 08 */	ble lbl_80611D14
/* 80611D10  3B 60 00 03 */	li r27, 3
lbl_80611D14:
/* 80611D14  81 5F 02 E0 */	lwz r10, 0x2e0(r31)
/* 80611D18  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80611D1C  3C 60 80 6D */	lis r3, rgb_tbl@ha /* 0x806D2BC4@ha */
/* 80611D20  3C 00 FB 00 */	lis r0, 0xfb00
/* 80611D24  38 AA 00 08 */	addi r5, r10, 8
/* 80611D28  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 80611D2C  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80611D30  1D 1B 00 06 */	mulli r8, r27, 6
/* 80611D34  38 E3 2B C4 */	addi r7, r3, rgb_tbl@l /* 0x806D2BC4@l */
/* 80611D38  90 8A 00 00 */	stw r4, 0(r10)
/* 80611D3C  7F 83 E3 78 */	mr r3, r28
/* 80611D40  7D 27 42 14 */	add r9, r7, r8
/* 80611D44  7F A5 EB 78 */	mr r5, r29
/* 80611D48  88 C9 00 01 */	lbz r6, 1(r9)
/* 80611D4C  38 9C 00 10 */	addi r4, r28, 0x10
/* 80611D50  7C E7 40 AE */	lbzx r7, r7, r8
/* 80611D54  54 C6 82 1E */	rlwinm r6, r6, 0x10, 8, 0xf
/* 80611D58  89 09 00 02 */	lbz r8, 2(r9)
/* 80611D5C  50 E6 C0 0E */	rlwimi r6, r7, 0x18, 0, 7
/* 80611D60  51 06 44 2E */	rlwimi r6, r8, 8, 0x10, 0x17
/* 80611D64  7F C6 33 78 */	or r6, r30, r6
/* 80611D68  90 CA 00 04 */	stw r6, 4(r10)
/* 80611D6C  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80611D70  38 C8 00 08 */	addi r6, r8, 8
/* 80611D74  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 80611D78  90 08 00 00 */	stw r0, 0(r8)
/* 80611D7C  88 09 00 04 */	lbz r0, 4(r9)
/* 80611D80  88 C9 00 03 */	lbz r6, 3(r9)
/* 80611D84  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 80611D88  88 E9 00 05 */	lbz r7, 5(r9)
/* 80611D8C  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 80611D90  50 E0 44 2E */	rlwimi r0, r7, 8, 0x10, 0x17
/* 80611D94  60 00 00 FF */	ori r0, r0, 0xff
/* 80611D98  90 08 00 04 */	stw r0, 4(r8)
/* 80611D9C  4B FF FD E9 */	bl eKamifubuki_one_draw
/* 80611DA0  7F 83 E3 78 */	mr r3, r28
/* 80611DA4  7F A5 EB 78 */	mr r5, r29
/* 80611DA8  38 9C 00 34 */	addi r4, r28, 0x34
/* 80611DAC  4B FF FD D9 */	bl eKamifubuki_one_draw
/* 80611DB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80611DB4  4B A8 91 65 */	bl func_8009AF18
/* 80611DB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80611DBC  7C 08 03 A6 */	mtlr r0
/* 80611DC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80611DC4  4E 80 00 20 */	blr 
