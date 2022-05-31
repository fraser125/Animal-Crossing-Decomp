lbl_8058FCB4:
/* 8058FCB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058FCB8  7C 08 02 A6 */	mflr r0
/* 8058FCBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058FCC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FCC4  4B B0 B2 0D */	bl func_8009AED0
/* 8058FCC8  7C 7C 1B 78 */	mr r28, r3
/* 8058FCCC  7C 9D 23 78 */	mr r29, r4
/* 8058FCD0  7C BE 2B 78 */	mr r30, r5
/* 8058FCD4  38 60 00 0E */	li r3, 0xe
/* 8058FCD8  38 80 00 09 */	li r4, 9
/* 8058FCDC  4B E0 E0 F1 */	bl mEv_get_save_area
/* 8058FCE0  38 00 00 00 */	li r0, 0
/* 8058FCE4  7C 7F 1B 78 */	mr r31, r3
/* 8058FCE8  98 1C 07 F5 */	stb r0, 0x7f5(r28)
/* 8058FCEC  7F 83 E3 78 */	mr r3, r28
/* 8058FCF0  7F A4 EB 78 */	mr r4, r29
/* 8058FCF4  4B FF FF 89 */	bl aTNN1_normal_wait_init
/* 8058FCF8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058FCFC  7F 83 E3 78 */	mr r3, r28
/* 8058FD00  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058FD04  7F C4 F3 78 */	mr r4, r30
/* 8058FD08  3C C5 00 02 */	addis r6, r5, 2
/* 8058FD0C  38 A0 00 00 */	li r5, 0
/* 8058FD10  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058FD14  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058FD18  7D 89 03 A6 */	mtctr r12
/* 8058FD1C  4E 80 04 21 */	bctrl 
/* 8058FD20  38 60 00 00 */	li r3, 0
/* 8058FD24  3C 00 43 30 */	lis r0, 0x4330
/* 8058FD28  90 7C 01 BC */	stw r3, 0x1bc(r28)
/* 8058FD2C  3C 60 80 65 */	lis r3, lit_532@ha /* 0x80649C0C@ha */
/* 8058FD30  3C 80 80 65 */	lis r4, lit_530@ha /* 0x80649C04@ha */
/* 8058FD34  C8 23 9C 0C */	lfd f1, lit_532@l(r3)  /* 0x80649C0C@l */
/* 8058FD38  B3 DC 09 74 */	sth r30, 0x974(r28)
/* 8058FD3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FD40  C0 44 9C 04 */	lfs f2, lit_530@l(r4)  /* 0x80649C04@l */
/* 8058FD44  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 8058FD48  90 01 00 08 */	stw r0, 8(r1)
/* 8058FD4C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8058FD50  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058FD54  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058FD58  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058FD5C  D0 1C 01 B8 */	stfs f0, 0x1b8(r28)
/* 8058FD60  4B B0 B1 BD */	bl func_8009AF1C
/* 8058FD64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058FD68  7C 08 03 A6 */	mtlr r0
/* 8058FD6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058FD70  4E 80 00 20 */	blr 
