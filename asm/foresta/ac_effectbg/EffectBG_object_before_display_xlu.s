lbl_80418854:
/* 80418854  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80418858  7C 08 02 A6 */	mflr r0
/* 8041885C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80418860  39 61 00 40 */	addi r11, r1, 0x40
/* 80418864  4B C8 26 65 */	bl func_8009AEC8
/* 80418868  7C BB 2B 78 */	mr r27, r5
/* 8041886C  7C 7A 1B 78 */	mr r26, r3
/* 80418870  2C 1B 00 03 */	cmpwi r27, 3
/* 80418874  7C DC 33 78 */	mr r28, r6
/* 80418878  7C FD 3B 78 */	mr r29, r7
/* 8041887C  7D 1E 43 78 */	mr r30, r8
/* 80418880  7D 3F 4B 78 */	mr r31, r9
/* 80418884  40 82 00 94 */	bne lbl_80418918
/* 80418888  A8 7E 03 C0 */	lha r3, 0x3c0(r30)
/* 8041888C  4B FA 22 65 */	bl sin_s
/* 80418890  A8 7E 03 C2 */	lha r3, 0x3c2(r30)
/* 80418894  3C 00 43 30 */	lis r0, 0x4330
/* 80418898  90 01 00 08 */	stw r0, 8(r1)
/* 8041889C  3C 80 80 64 */	lis r4, lit_760@ha /* 0x80643CE4@ha */
/* 804188A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804188A4  C8 44 3C E4 */	lfd f2, lit_760@l(r4)  /* 0x80643CE4@l */
/* 804188A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 804188AC  A8 1F 00 02 */	lha r0, 2(r31)
/* 804188B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804188B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804188B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804188BC  FC 00 00 1E */	fctiwz f0, f0
/* 804188C0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804188C4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804188C8  7C 00 1A 14 */	add r0, r0, r3
/* 804188CC  B0 1F 00 02 */	sth r0, 2(r31)
/* 804188D0  A8 7E 03 C0 */	lha r3, 0x3c0(r30)
/* 804188D4  4B FA 21 C9 */	bl cos_s
/* 804188D8  A8 7E 03 C2 */	lha r3, 0x3c2(r30)
/* 804188DC  3C 00 43 30 */	lis r0, 0x4330
/* 804188E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804188E4  3C 80 80 64 */	lis r4, lit_760@ha /* 0x80643CE4@ha */
/* 804188E8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804188EC  C8 44 3C E4 */	lfd f2, lit_760@l(r4)  /* 0x80643CE4@l */
/* 804188F0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 804188F4  A8 1F 00 04 */	lha r0, 4(r31)
/* 804188F8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804188FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80418900  EC 00 00 72 */	fmuls f0, f0, f1
/* 80418904  FC 00 00 1E */	fctiwz f0, f0
/* 80418908  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8041890C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80418910  7C 00 1A 14 */	add r0, r0, r3
/* 80418914  B0 1F 00 04 */	sth r0, 4(r31)
lbl_80418918:
/* 80418918  A8 1E 03 BE */	lha r0, 0x3be(r30)
/* 8041891C  2C 00 00 02 */	cmpwi r0, 2
/* 80418920  40 82 01 A8 */	bne lbl_80418AC8
/* 80418924  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80418928  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041892C  3C 63 00 02 */	addis r3, r3, 2
/* 80418930  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 80418934  28 00 00 03 */	cmplwi r0, 3
/* 80418938  40 82 01 90 */	bne lbl_80418AC8
/* 8041893C  A8 7E 03 BC */	lha r3, 0x3bc(r30)
/* 80418940  7C 60 07 35 */	extsh. r0, r3
/* 80418944  41 82 00 1C */	beq lbl_80418960
/* 80418948  38 03 FF FD */	addi r0, r3, -3
/* 8041894C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80418950  28 00 00 01 */	cmplwi r0, 1
/* 80418954  40 81 00 0C */	ble lbl_80418960
/* 80418958  2C 1B 00 04 */	cmpwi r27, 4
/* 8041895C  41 82 00 24 */	beq lbl_80418980
lbl_80418960:
/* 80418960  7C 60 07 35 */	extsh. r0, r3
/* 80418964  41 82 00 14 */	beq lbl_80418978
/* 80418968  2C 03 00 03 */	cmpwi r3, 3
/* 8041896C  41 82 00 0C */	beq lbl_80418978
/* 80418970  2C 03 00 04 */	cmpwi r3, 4
/* 80418974  40 82 01 54 */	bne lbl_80418AC8
lbl_80418978:
/* 80418978  2C 1B 00 02 */	cmpwi r27, 2
/* 8041897C  40 82 01 4C */	bne lbl_80418AC8
lbl_80418980:
/* 80418980  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80418984  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80418988  3C 63 00 02 */	addis r3, r3, 2
/* 8041898C  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 80418990  28 00 00 10 */	cmplwi r0, 0x10
/* 80418994  41 82 00 0C */	beq lbl_804189A0
/* 80418998  28 00 00 0F */	cmplwi r0, 0xf
/* 8041899C  40 82 00 10 */	bne lbl_804189AC
lbl_804189A0:
/* 804189A0  88 1E 03 C4 */	lbz r0, 0x3c4(r30)
/* 804189A4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804189A8  40 82 00 10 */	bne lbl_804189B8
lbl_804189AC:
/* 804189AC  38 00 00 00 */	li r0, 0
/* 804189B0  90 1C 00 00 */	stw r0, 0(r28)
/* 804189B4  48 00 01 14 */	b lbl_80418AC8
lbl_804189B8:
/* 804189B8  A8 DE 03 BA */	lha r6, 0x3ba(r30)
/* 804189BC  3C 60 43 30 */	lis r3, 0x4330
/* 804189C0  A8 BE 03 B8 */	lha r5, 0x3b8(r30)
/* 804189C4  3C 80 80 64 */	lis r4, lit_760@ha /* 0x80643CE4@ha */
/* 804189C8  38 06 FF BA */	addi r0, r6, -70
/* 804189CC  80 FA 20 90 */	lwz r7, 0x2090(r26)
/* 804189D0  7C C5 30 50 */	subf r6, r5, r6
/* 804189D4  38 A4 3C E4 */	addi r5, r4, lit_760@l /* 0x80643CE4@l */
/* 804189D8  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 804189DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804189E0  90 81 00 24 */	stw r4, 0x24(r1)
/* 804189E4  54 E8 00 34 */	rlwinm r8, r7, 0, 0, 0x1a
/* 804189E8  C8 45 00 00 */	lfd f2, 0(r5)
/* 804189EC  3C 80 80 64 */	lis r4, lit_988@ha /* 0x80643D0C@ha */
/* 804189F0  90 61 00 20 */	stw r3, 0x20(r1)
/* 804189F4  38 C0 00 03 */	li r6, 3
/* 804189F8  81 3E 03 CC */	lwz r9, 0x3cc(r30)
/* 804189FC  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80418A00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80418A04  80 FE 03 C8 */	lwz r7, 0x3c8(r30)
/* 80418A08  EC 21 10 28 */	fsubs f1, f1, f2
/* 80418A0C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80418A10  7C 07 4A 14 */	add r0, r7, r9
/* 80418A14  C0 64 3D 0C */	lfs f3, lit_988@l(r4)  /* 0x80643D0C@l */
/* 80418A18  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80418A1C  7C 68 02 14 */	add r3, r8, r0
/* 80418A20  7C 03 33 96 */	divwu r0, r3, r6
/* 80418A24  80 FA 00 00 */	lwz r7, 0(r26)
/* 80418A28  EC 00 10 28 */	fsubs f0, f0, f2
/* 80418A2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80418A30  7C 00 31 D6 */	mullw r0, r0, r6
/* 80418A34  EC 03 00 32 */	fmuls f0, f3, f0
/* 80418A38  FC 00 00 1E */	fctiwz f0, f0
/* 80418A3C  7C 00 18 51 */	subf. r0, r0, r3
/* 80418A40  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80418A44  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80418A48  40 82 00 2C */	bne lbl_80418A74
/* 80418A4C  80 C7 02 E0 */	lwz r6, 0x2e0(r7)
/* 80418A50  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80418A54  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFF6400@ha */
/* 80418A58  38 A6 00 08 */	addi r5, r6, 8
/* 80418A5C  64 04 FA 00 */	oris r4, r0, 0xfa00
/* 80418A60  90 A7 02 E0 */	stw r5, 0x2e0(r7)
/* 80418A64  38 03 64 00 */	addi r0, r3, 0x6400 /* 0xFFFF6400@l */
/* 80418A68  90 86 00 00 */	stw r4, 0(r6)
/* 80418A6C  90 06 00 04 */	stw r0, 4(r6)
/* 80418A70  48 00 00 58 */	b lbl_80418AC8
lbl_80418A74:
/* 80418A74  2C 00 00 01 */	cmpwi r0, 1
/* 80418A78  40 82 00 2C */	bne lbl_80418AA4
/* 80418A7C  80 C7 02 E0 */	lwz r6, 0x2e0(r7)
/* 80418A80  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80418A84  3C 60 65 00 */	lis r3, 0x6500 /* 0x64FFFF00@ha */
/* 80418A88  38 A6 00 08 */	addi r5, r6, 8
/* 80418A8C  64 04 FA 00 */	oris r4, r0, 0xfa00
/* 80418A90  90 A7 02 E0 */	stw r5, 0x2e0(r7)
/* 80418A94  38 03 FF 00 */	addi r0, r3, 0xFF00 /* 0x64FFFF00@l */
/* 80418A98  90 86 00 00 */	stw r4, 0(r6)
/* 80418A9C  90 06 00 04 */	stw r0, 4(r6)
/* 80418AA0  48 00 00 28 */	b lbl_80418AC8
lbl_80418AA4:
/* 80418AA4  80 C7 02 E0 */	lwz r6, 0x2e0(r7)
/* 80418AA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80418AAC  3C 60 FF 65 */	lis r3, 0xFF65 /* 0xFF64FF00@ha */
/* 80418AB0  38 A6 00 08 */	addi r5, r6, 8
/* 80418AB4  64 04 FA 00 */	oris r4, r0, 0xfa00
/* 80418AB8  90 A7 02 E0 */	stw r5, 0x2e0(r7)
/* 80418ABC  38 03 FF 00 */	addi r0, r3, 0xFF00 /* 0xFF64FF00@l */
/* 80418AC0  90 86 00 00 */	stw r4, 0(r6)
/* 80418AC4  90 06 00 04 */	stw r0, 4(r6)
lbl_80418AC8:
/* 80418AC8  38 00 00 01 */	li r0, 1
/* 80418ACC  38 60 00 01 */	li r3, 1
/* 80418AD0  98 1D 00 00 */	stb r0, 0(r29)
/* 80418AD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80418AD8  4B C8 24 3D */	bl func_8009AF14
/* 80418ADC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80418AE0  7C 08 03 A6 */	mtlr r0
/* 80418AE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80418AE8  4E 80 00 20 */	blr 
