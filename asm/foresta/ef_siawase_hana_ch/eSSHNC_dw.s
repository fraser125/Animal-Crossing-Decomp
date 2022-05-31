lbl_8061CFD4:
/* 8061CFD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061CFD8  7C 08 02 A6 */	mflr r0
/* 8061CFDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061CFE0  39 61 00 30 */	addi r11, r1, 0x30
/* 8061CFE4  4B A7 DE E5 */	bl func_8009AEC8
/* 8061CFE8  7C 7A 1B 78 */	mr r26, r3
/* 8061CFEC  3C 60 80 6D */	lis r3, eSSHNC_color_info@ha /* 0x806D34F8@ha */
/* 8061CFF0  A8 DA 00 00 */	lha r6, 0(r26)
/* 8061CFF4  38 A3 34 F8 */	addi r5, r3, eSSHNC_color_info@l /* 0x806D34F8@l */
/* 8061CFF8  A8 1A 00 4C */	lha r0, 0x4c(r26)
/* 8061CFFC  7C 9B 23 78 */	mr r27, r4
/* 8061D000  20 66 00 5C */	subfic r3, r6, 0x5c
/* 8061D004  54 00 18 38 */	slwi r0, r0, 3
/* 8061D008  7C 63 07 34 */	extsh r3, r3
/* 8061D00C  7F A5 00 2E */	lwzx r29, r5, r0
/* 8061D010  7C 85 02 14 */	add r4, r5, r0
/* 8061D014  2C 03 00 42 */	cmpwi r3, 0x42
/* 8061D018  83 84 00 04 */	lwz r28, 4(r4)
/* 8061D01C  41 80 00 4C */	blt lbl_8061D068
/* 8061D020  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061D024  3C C0 80 65 */	lis r6, lit_441@ha /* 0x8064CB5C@ha */
/* 8061D028  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8061D02C  3C A0 80 65 */	lis r5, lit_400@ha /* 0x8064CB50@ha */
/* 8061D030  3C 84 00 02 */	addis r4, r4, 2
/* 8061D034  C0 45 CB 50 */	lfs f2, lit_400@l(r5)  /* 0x8064CB50@l */
/* 8061D038  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8061D03C  38 A0 00 5C */	li r5, 0x5c
/* 8061D040  C0 26 CB 5C */	lfs f1, lit_441@l(r6)  /* 0x8064CB5C@l */
/* 8061D044  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061D048  38 80 00 42 */	li r4, 0x42
/* 8061D04C  7D 89 03 A6 */	mtctr r12
/* 8061D050  4E 80 04 21 */	bctrl 
/* 8061D054  FC 00 08 1E */	fctiwz f0, f1
/* 8061D058  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061D05C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061D060  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8061D064  48 00 00 08 */	b lbl_8061D06C
lbl_8061D068:
/* 8061D068  3B E0 00 FF */	li r31, 0xff
lbl_8061D06C:
/* 8061D06C  83 DB 00 00 */	lwz r30, 0(r27)
/* 8061D070  7F C3 F3 78 */	mr r3, r30
/* 8061D074  4B DC 80 E5 */	bl _texture_z_light_fog_prim_xlu
/* 8061D078  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8061D07C  38 60 00 00 */	li r3, 0
/* 8061D080  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 8061D084  C0 7A 00 18 */	lfs f3, 0x18(r26)
/* 8061D088  4B DE F2 79 */	bl Matrix_translate
/* 8061D08C  38 7B 20 4C */	addi r3, r27, 0x204c
/* 8061D090  38 80 00 01 */	li r4, 1
/* 8061D094  4B DE F2 05 */	bl Matrix_mult
/* 8061D098  C0 3A 00 34 */	lfs f1, 0x34(r26)
/* 8061D09C  38 60 00 01 */	li r3, 1
/* 8061D0A0  C0 5A 00 38 */	lfs f2, 0x38(r26)
/* 8061D0A4  C0 7A 00 3C */	lfs f3, 0x3c(r26)
/* 8061D0A8  4B DE F3 45 */	bl Matrix_scale
/* 8061D0AC  A8 7A 00 4E */	lha r3, 0x4e(r26)
/* 8061D0B0  38 80 00 01 */	li r4, 1
/* 8061D0B4  4B DE F7 3D */	bl Matrix_RotateZ
/* 8061D0B8  83 5E 02 E0 */	lwz r26, 0x2e0(r30)
/* 8061D0BC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061D0C0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061D0C4  38 7A 00 08 */	addi r3, r26, 8
/* 8061D0C8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061D0CC  90 1A 00 00 */	stw r0, 0(r26)
/* 8061D0D0  80 7B 00 00 */	lwz r3, 0(r27)
/* 8061D0D4  4B DF 03 01 */	bl _Matrix_to_Mtx_new
/* 8061D0D8  90 7A 00 04 */	stw r3, 4(r26)
/* 8061D0DC  3C 60 80 CC */	lis r3, ef_siawase01_01_modelT@ha /* 0x80CBE340@ha */
/* 8061D0E0  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 8061D0E4  3C A0 FB 00 */	lis r5, 0xfb00
/* 8061D0E8  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8061D0EC  38 03 E3 40 */	addi r0, r3, ef_siawase01_01_modelT@l /* 0x80CBE340@l */
/* 8061D0F0  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 8061D0F4  3C 80 DE 00 */	lis r4, 0xde00
/* 8061D0F8  38 68 00 08 */	addi r3, r8, 8
/* 8061D0FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8061D100  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061D104  90 C8 00 00 */	stw r6, 0(r8)
/* 8061D108  88 7D 00 01 */	lbz r3, 1(r29)
/* 8061D10C  88 DD 00 00 */	lbz r6, 0(r29)
/* 8061D110  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8061D114  88 FD 00 02 */	lbz r7, 2(r29)
/* 8061D118  50 C3 C0 0E */	rlwimi r3, r6, 0x18, 0, 7
/* 8061D11C  50 E3 44 2E */	rlwimi r3, r7, 8, 0x10, 0x17
/* 8061D120  53 E3 06 3E */	rlwimi r3, r31, 0, 0x18, 0x1f
/* 8061D124  90 68 00 04 */	stw r3, 4(r8)
/* 8061D128  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8061D12C  38 68 00 08 */	addi r3, r8, 8
/* 8061D130  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061D134  90 A8 00 00 */	stw r5, 0(r8)
/* 8061D138  88 7C 00 01 */	lbz r3, 1(r28)
/* 8061D13C  88 BC 00 00 */	lbz r5, 0(r28)
/* 8061D140  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8061D144  88 DC 00 02 */	lbz r6, 2(r28)
/* 8061D148  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8061D14C  88 FC 00 03 */	lbz r7, 3(r28)
/* 8061D150  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 8061D154  50 E3 06 3E */	rlwimi r3, r7, 0, 0x18, 0x1f
/* 8061D158  90 68 00 04 */	stw r3, 4(r8)
/* 8061D15C  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8061D160  38 65 00 08 */	addi r3, r5, 8
/* 8061D164  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061D168  90 85 00 00 */	stw r4, 0(r5)
/* 8061D16C  90 05 00 04 */	stw r0, 4(r5)
/* 8061D170  4B A7 DD A5 */	bl func_8009AF14
/* 8061D174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061D178  7C 08 03 A6 */	mtlr r0
/* 8061D17C  38 21 00 30 */	addi r1, r1, 0x30
/* 8061D180  4E 80 00 20 */	blr 
