lbl_80624334:
/* 80624334  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80624338  7C 08 02 A6 */	mflr r0
/* 8062433C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80624340  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80624344  4B A7 6B 81 */	bl func_8009AEC4
/* 80624348  7D 08 07 34 */	extsh r8, r8
/* 8062434C  7C 7B 1B 78 */	mr r27, r3
/* 80624350  2C 08 00 02 */	cmpwi r8, 2
/* 80624354  7C BC 2B 78 */	mr r28, r5
/* 80624358  7C DD 33 78 */	mr r29, r6
/* 8062435C  41 82 01 64 */	beq lbl_806244C0
/* 80624360  40 80 00 14 */	bge lbl_80624374
/* 80624364  2C 08 00 00 */	cmpwi r8, 0
/* 80624368  41 82 00 20 */	beq lbl_80624388
/* 8062436C  40 80 00 FC */	bge lbl_80624468
/* 80624370  48 00 03 50 */	b lbl_806246C0
lbl_80624374:
/* 80624374  2C 08 00 09 */	cmpwi r8, 9
/* 80624378  40 80 03 48 */	bge lbl_806246C0
/* 8062437C  2C 08 00 04 */	cmpwi r8, 4
/* 80624380  40 80 02 78 */	bge lbl_806245F8
/* 80624384  48 00 01 94 */	b lbl_80624518
lbl_80624388:
/* 80624388  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062438C  80 BB 00 00 */	lwz r5, 0(r27)
/* 80624390  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80624394  80 9B 00 04 */	lwz r4, 4(r27)
/* 80624398  80 1B 00 08 */	lwz r0, 8(r27)
/* 8062439C  3F 43 00 02 */	addis r26, r3, 2
/* 806243A0  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 806243A4  7F 86 E3 78 */	mr r6, r28
/* 806243A8  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 806243AC  7F A7 EB 78 */	mr r7, r29
/* 806243B0  90 81 00 60 */	stw r4, 0x60(r1)
/* 806243B4  38 81 00 5C */	addi r4, r1, 0x5c
/* 806243B8  38 60 00 45 */	li r3, 0x45
/* 806243BC  38 A0 00 01 */	li r5, 1
/* 806243C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 806243C4  39 00 00 00 */	li r8, 0
/* 806243C8  39 20 00 00 */	li r9, 0
/* 806243CC  39 40 00 00 */	li r10, 0
/* 806243D0  81 8B 00 00 */	lwz r12, 0(r11)
/* 806243D4  7D 89 03 A6 */	mtctr r12
/* 806243D8  4E 80 04 21 */	bctrl 
/* 806243DC  80 BB 00 04 */	lwz r5, 4(r27)
/* 806243E0  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064CF80@ha */
/* 806243E4  80 1B 00 08 */	lwz r0, 8(r27)
/* 806243E8  3C 60 80 65 */	lis r3, lit_414@ha /* 0x8064CF84@ha */
/* 806243EC  90 A1 00 84 */	stw r5, 0x84(r1)
/* 806243F0  38 A3 CF 84 */	addi r5, r3, lit_414@l /* 0x8064CF84@l */
/* 806243F4  83 3B 00 00 */	lwz r25, 0(r27)
/* 806243F8  7F 86 E3 78 */	mr r6, r28
/* 806243FC  90 01 00 88 */	stw r0, 0x88(r1)
/* 80624400  7F A7 EB 78 */	mr r7, r29
/* 80624404  C0 44 CF 80 */	lfs f2, lit_413@l(r4)  /* 0x8064CF80@l */
/* 80624408  38 81 00 50 */	addi r4, r1, 0x50
/* 8062440C  C0 61 00 84 */	lfs f3, 0x84(r1)
/* 80624410  38 60 00 47 */	li r3, 0x47
/* 80624414  C0 05 00 00 */	lfs f0, 0(r5)
/* 80624418  38 A0 00 01 */	li r5, 1
/* 8062441C  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80624420  EC 43 10 2A */	fadds f2, f3, f2
/* 80624424  93 21 00 50 */	stw r25, 0x50(r1)
/* 80624428  39 00 00 00 */	li r8, 0
/* 8062442C  EC 01 00 2A */	fadds f0, f1, f0
/* 80624430  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 80624434  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80624438  39 20 00 00 */	li r9, 0
/* 8062443C  39 40 00 00 */	li r10, 0
/* 80624440  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80624444  81 81 00 84 */	lwz r12, 0x84(r1)
/* 80624448  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8062444C  91 81 00 54 */	stw r12, 0x54(r1)
/* 80624450  90 01 00 58 */	stw r0, 0x58(r1)
/* 80624454  81 8B 00 00 */	lwz r12, 0(r11)
/* 80624458  93 21 00 80 */	stw r25, 0x80(r1)
/* 8062445C  7D 89 03 A6 */	mtctr r12
/* 80624460  4E 80 04 21 */	bctrl 
/* 80624464  48 00 02 5C */	b lbl_806246C0
lbl_80624468:
/* 80624468  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062446C  80 BB 00 00 */	lwz r5, 0(r27)
/* 80624470  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80624474  80 9B 00 04 */	lwz r4, 4(r27)
/* 80624478  80 1B 00 08 */	lwz r0, 8(r27)
/* 8062447C  3C 63 00 02 */	addis r3, r3, 2
/* 80624480  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80624484  7F 86 E3 78 */	mr r6, r28
/* 80624488  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 8062448C  7F A7 EB 78 */	mr r7, r29
/* 80624490  90 81 00 48 */	stw r4, 0x48(r1)
/* 80624494  38 81 00 44 */	addi r4, r1, 0x44
/* 80624498  38 60 00 45 */	li r3, 0x45
/* 8062449C  38 A0 00 01 */	li r5, 1
/* 806244A0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806244A4  39 00 00 00 */	li r8, 0
/* 806244A8  39 20 00 01 */	li r9, 1
/* 806244AC  39 40 00 00 */	li r10, 0
/* 806244B0  81 8B 00 00 */	lwz r12, 0(r11)
/* 806244B4  7D 89 03 A6 */	mtctr r12
/* 806244B8  4E 80 04 21 */	bctrl 
/* 806244BC  48 00 02 04 */	b lbl_806246C0
lbl_806244C0:
/* 806244C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806244C4  80 BB 00 00 */	lwz r5, 0(r27)
/* 806244C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806244CC  80 9B 00 04 */	lwz r4, 4(r27)
/* 806244D0  80 1B 00 08 */	lwz r0, 8(r27)
/* 806244D4  3C 63 00 02 */	addis r3, r3, 2
/* 806244D8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 806244DC  7F 86 E3 78 */	mr r6, r28
/* 806244E0  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 806244E4  7F A7 EB 78 */	mr r7, r29
/* 806244E8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 806244EC  38 81 00 38 */	addi r4, r1, 0x38
/* 806244F0  38 60 00 45 */	li r3, 0x45
/* 806244F4  38 A0 00 01 */	li r5, 1
/* 806244F8  90 01 00 40 */	stw r0, 0x40(r1)
/* 806244FC  39 00 00 00 */	li r8, 0
/* 80624500  39 20 00 00 */	li r9, 0
/* 80624504  39 40 00 00 */	li r10, 0
/* 80624508  81 8B 00 00 */	lwz r12, 0(r11)
/* 8062450C  7D 89 03 A6 */	mtctr r12
/* 80624510  4E 80 04 21 */	bctrl 
/* 80624514  48 00 01 AC */	b lbl_806246C0
lbl_80624518:
/* 80624518  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062451C  80 BB 00 00 */	lwz r5, 0(r27)
/* 80624520  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80624524  80 9B 00 04 */	lwz r4, 4(r27)
/* 80624528  80 1B 00 08 */	lwz r0, 8(r27)
/* 8062452C  3F 43 00 02 */	addis r26, r3, 2
/* 80624530  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80624534  7F 86 E3 78 */	mr r6, r28
/* 80624538  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 8062453C  7F A7 EB 78 */	mr r7, r29
/* 80624540  90 81 00 30 */	stw r4, 0x30(r1)
/* 80624544  38 81 00 2C */	addi r4, r1, 0x2c
/* 80624548  38 60 00 45 */	li r3, 0x45
/* 8062454C  38 A0 00 01 */	li r5, 1
/* 80624550  90 01 00 34 */	stw r0, 0x34(r1)
/* 80624554  39 00 00 00 */	li r8, 0
/* 80624558  39 20 00 00 */	li r9, 0
/* 8062455C  39 40 00 00 */	li r10, 0
/* 80624560  81 8B 00 00 */	lwz r12, 0(r11)
/* 80624564  7D 89 03 A6 */	mtctr r12
/* 80624568  4E 80 04 21 */	bctrl 
/* 8062456C  80 BB 00 04 */	lwz r5, 4(r27)
/* 80624570  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064CF80@ha */
/* 80624574  80 1B 00 08 */	lwz r0, 8(r27)
/* 80624578  3C 60 80 65 */	lis r3, lit_414@ha /* 0x8064CF84@ha */
/* 8062457C  90 A1 00 78 */	stw r5, 0x78(r1)
/* 80624580  38 A3 CF 84 */	addi r5, r3, lit_414@l /* 0x8064CF84@l */
/* 80624584  83 3B 00 00 */	lwz r25, 0(r27)
/* 80624588  7F 86 E3 78 */	mr r6, r28
/* 8062458C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80624590  7F A7 EB 78 */	mr r7, r29
/* 80624594  C0 44 CF 80 */	lfs f2, lit_413@l(r4)  /* 0x8064CF80@l */
/* 80624598  38 81 00 20 */	addi r4, r1, 0x20
/* 8062459C  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 806245A0  38 60 00 48 */	li r3, 0x48
/* 806245A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 806245A8  38 A0 00 01 */	li r5, 1
/* 806245AC  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 806245B0  EC 43 10 2A */	fadds f2, f3, f2
/* 806245B4  93 21 00 20 */	stw r25, 0x20(r1)
/* 806245B8  39 00 00 00 */	li r8, 0
/* 806245BC  EC 01 00 2A */	fadds f0, f1, f0
/* 806245C0  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 806245C4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 806245C8  39 20 00 00 */	li r9, 0
/* 806245CC  39 40 00 00 */	li r10, 0
/* 806245D0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806245D4  81 81 00 78 */	lwz r12, 0x78(r1)
/* 806245D8  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 806245DC  91 81 00 24 */	stw r12, 0x24(r1)
/* 806245E0  90 01 00 28 */	stw r0, 0x28(r1)
/* 806245E4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806245E8  93 21 00 74 */	stw r25, 0x74(r1)
/* 806245EC  7D 89 03 A6 */	mtctr r12
/* 806245F0  4E 80 04 21 */	bctrl 
/* 806245F4  48 00 00 CC */	b lbl_806246C0
lbl_806245F8:
/* 806245F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806245FC  38 08 FF FC */	addi r0, r8, -4
/* 80624600  80 DB 00 00 */	lwz r6, 0(r27)
/* 80624604  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80624608  3F E3 00 02 */	addis r31, r3, 2
/* 8062460C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80624610  80 BB 00 08 */	lwz r5, 8(r27)
/* 80624614  3C E0 80 65 */	lis r7, data_8064CF74@ha /* 0x8064CF74@ha */
/* 80624618  85 87 CF 74 */	lwzu r12, data_8064CF74@l(r7)  /* 0x8064CF74@l */
/* 8062461C  7C 1E 07 34 */	extsh r30, r0
/* 80624620  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80624624  57 C0 08 3C */	slwi r0, r30, 1
/* 80624628  83 27 00 04 */	lwz r25, 4(r7)
/* 8062462C  39 61 00 68 */	addi r11, r1, 0x68
/* 80624630  A3 47 00 08 */	lhz r26, 8(r7)
/* 80624634  7F 86 E3 78 */	mr r6, r28
/* 80624638  90 81 00 18 */	stw r4, 0x18(r1)
/* 8062463C  7F A7 EB 78 */	mr r7, r29
/* 80624640  81 3F 60 9C */	lwz r9, 0x609c(r31)
/* 80624644  38 81 00 14 */	addi r4, r1, 0x14
/* 80624648  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8062464C  38 60 00 45 */	li r3, 0x45
/* 80624650  38 A0 00 01 */	li r5, 1
/* 80624654  39 00 00 00 */	li r8, 0
/* 80624658  91 81 00 68 */	stw r12, 0x68(r1)
/* 8062465C  39 40 00 00 */	li r10, 0
/* 80624660  81 89 00 00 */	lwz r12, 0(r9)
/* 80624664  93 21 00 6C */	stw r25, 0x6c(r1)
/* 80624668  B3 41 00 70 */	sth r26, 0x70(r1)
/* 8062466C  7D 2B 02 AE */	lhax r9, r11, r0
/* 80624670  7D 89 03 A6 */	mtctr r12
/* 80624674  4E 80 04 21 */	bctrl 
/* 80624678  80 7B 00 00 */	lwz r3, 0(r27)
/* 8062467C  7F 86 E3 78 */	mr r6, r28
/* 80624680  80 BB 00 04 */	lwz r5, 4(r27)
/* 80624684  7F A7 EB 78 */	mr r7, r29
/* 80624688  80 1B 00 08 */	lwz r0, 8(r27)
/* 8062468C  7F C9 F3 78 */	mr r9, r30
/* 80624690  90 61 00 08 */	stw r3, 8(r1)
/* 80624694  38 81 00 08 */	addi r4, r1, 8
/* 80624698  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8062469C  38 60 00 47 */	li r3, 0x47
/* 806246A0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 806246A4  38 A0 00 01 */	li r5, 1
/* 806246A8  39 00 00 00 */	li r8, 0
/* 806246AC  39 40 00 00 */	li r10, 0
/* 806246B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806246B4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806246B8  7D 89 03 A6 */	mtctr r12
/* 806246BC  4E 80 04 21 */	bctrl 
lbl_806246C0:
/* 806246C0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806246C4  4B A7 68 4D */	bl func_8009AF10
/* 806246C8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806246CC  7C 08 03 A6 */	mtlr r0
/* 806246D0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806246D4  4E 80 00 20 */	blr 
