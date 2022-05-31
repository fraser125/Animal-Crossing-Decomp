lbl_805E9358:
/* 805E9358  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E935C  7C 08 02 A6 */	mflr r0
/* 805E9360  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E9364  39 61 00 30 */	addi r11, r1, 0x30
/* 805E9368  4B AB 1B 61 */	bl func_8009AEC8
/* 805E936C  7C 7A 1B 78 */	mr r26, r3
/* 805E9370  7C BE 2B 78 */	mr r30, r5
/* 805E9374  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E9378  7C 9D 23 78 */	mr r29, r4
/* 805E937C  83 9E 00 00 */	lwz r28, 0(r30)
/* 805E9380  83 E5 09 D0 */	lwz r31, 0x9d0(r5)
/* 805E9384  4B FF FB 95 */	bl mMU_get_md_no
/* 805E9388  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 805E938C  7C 7B 1B 78 */	mr r27, r3
/* 805E9390  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 805E9394  7C 03 00 40 */	cmplw r3, r0
/* 805E9398  41 82 00 6C */	beq lbl_805E9404
/* 805E939C  B3 7F 00 12 */	sth r27, 0x12(r31)
/* 805E93A0  7F E3 FB 78 */	mr r3, r31
/* 805E93A4  38 80 00 10 */	li r4, 0x10
/* 805E93A8  38 A0 00 20 */	li r5, 0x20
/* 805E93AC  4B DD 16 9D */	bl mem_clear
/* 805E93B0  7F 63 DB 78 */	mr r3, r27
/* 805E93B4  4B FF FA 8D */	bl mMU_check_music_collect_bit
/* 805E93B8  2C 03 00 00 */	cmpwi r3, 0
/* 805E93BC  41 82 00 14 */	beq lbl_805E93D0
/* 805E93C0  7F E3 FB 78 */	mr r3, r31
/* 805E93C4  7F 64 DB 78 */	mr r4, r27
/* 805E93C8  4B DC C5 DD */	bl mIN_copy_name_str
/* 805E93CC  48 00 00 14 */	b lbl_805E93E0
lbl_805E93D0:
/* 805E93D0  7F E3 FB 78 */	mr r3, r31
/* 805E93D4  38 80 00 05 */	li r4, 5
/* 805E93D8  38 A0 00 3F */	li r5, 0x3f
/* 805E93DC  4B DD 16 6D */	bl mem_clear
lbl_805E93E0:
/* 805E93E0  7F E3 FB 78 */	mr r3, r31
/* 805E93E4  38 80 00 10 */	li r4, 0x10
/* 805E93E8  4B DD 78 7D */	bl mMsg_Get_Length_String
/* 805E93EC  7C 60 1B 78 */	mr r0, r3
/* 805E93F0  7F E3 FB 78 */	mr r3, r31
/* 805E93F4  7C 04 03 78 */	mr r4, r0
/* 805E93F8  38 A0 00 01 */	li r5, 1
/* 805E93FC  4B DC 62 D5 */	bl mFont_GetStringWidth
/* 805E9400  B0 7F 00 10 */	sth r3, 0x10(r31)
lbl_805E9404:
/* 805E9404  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805E9408  7F 83 E3 78 */	mr r3, r28
/* 805E940C  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805E9410  7D 89 03 A6 */	mtctr r12
/* 805E9414  4E 80 04 21 */	bctrl 
/* 805E9418  38 60 00 01 */	li r3, 1
/* 805E941C  3C 00 43 30 */	lis r0, 0x4330
/* 805E9420  90 61 00 08 */	stw r3, 8(r1)
/* 805E9424  38 A0 00 00 */	li r5, 0
/* 805E9428  3C 80 80 65 */	lis r4, lit_579@ha /* 0x8064B678@ha */
/* 805E942C  3C 60 80 65 */	lis r3, lit_582@ha /* 0x8064B684@ha */
/* 805E9430  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805E9434  38 A3 B6 84 */	addi r5, r3, lit_582@l /* 0x8064B684@l */
/* 805E9438  39 04 B6 78 */	addi r8, r4, lit_579@l /* 0x8064B678@l */
/* 805E943C  C8 25 00 00 */	lfd f1, 0(r5)
/* 805E9440  A8 DF 00 10 */	lha r6, 0x10(r31)
/* 805E9444  3C 80 80 65 */	lis r4, lit_580@ha /* 0x8064B67C@ha */
/* 805E9448  38 E4 B6 7C */	addi r7, r4, lit_580@l /* 0x8064B67C@l */
/* 805E944C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E9450  20 06 01 40 */	subfic r0, r6, 0x140
/* 805E9454  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805E9458  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E945C  3C 60 80 65 */	lis r3, lit_561@ha /* 0x8064B65C@ha */
/* 805E9460  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9464  7F E4 FB 78 */	mr r4, r31
/* 805E9468  C0 63 B6 5C */	lfs f3, lit_561@l(r3)  /* 0x8064B65C@l */
/* 805E946C  7F C3 F3 78 */	mr r3, r30
/* 805E9470  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E9474  38 A0 00 10 */	li r5, 0x10
/* 805E9478  C0 47 00 00 */	lfs f2, 0(r7)
/* 805E947C  FC 80 18 90 */	fmr f4, f3
/* 805E9480  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E9484  C0 DD 00 18 */	lfs f6, 0x18(r29)
/* 805E9488  38 C0 00 37 */	li r6, 0x37
/* 805E948C  38 E0 00 FF */	li r7, 0xff
/* 805E9490  39 00 00 FF */	li r8, 0xff
/* 805E9494  EC 25 00 32 */	fmuls f1, f5, f0
/* 805E9498  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805E949C  39 20 00 FF */	li r9, 0xff
/* 805E94A0  39 40 00 00 */	li r10, 0
/* 805E94A4  EC 26 08 2A */	fadds f1, f6, f1
/* 805E94A8  EC 42 00 2A */	fadds f2, f2, f0
/* 805E94AC  4B DC 6B FD */	bl mFont_SetLineStrings
/* 805E94B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E94B4  4B AB 1A 61 */	bl func_8009AF14
/* 805E94B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E94BC  7C 08 03 A6 */	mtlr r0
/* 805E94C0  38 21 00 30 */	addi r1, r1, 0x30
/* 805E94C4  4E 80 00 20 */	blr 
