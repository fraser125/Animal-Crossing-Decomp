lbl_80417818:
/* 80417818  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8041781C  7C 08 02 A6 */	mflr r0
/* 80417820  90 01 00 64 */	stw r0, 0x64(r1)
/* 80417824  39 61 00 60 */	addi r11, r1, 0x60
/* 80417828  4B C8 36 95 */	bl func_8009AEBC
/* 8041782C  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 80417830  7C E0 07 35 */	extsh. r0, r7
/* 80417834  39 08 85 38 */	addi r8, r8, common_data@l /* 0x81138538@l */
/* 80417838  7C 77 1B 78 */	mr r23, r3
/* 8041783C  3C 68 00 02 */	addis r3, r8, 2
/* 80417840  7C 98 23 78 */	mr r24, r4
/* 80417844  83 A3 61 10 */	lwz r29, 0x6110(r3)
/* 80417848  7C B9 2B 78 */	mr r25, r5
/* 8041784C  7C DA 33 78 */	mr r26, r6
/* 80417850  41 82 00 18 */	beq lbl_80417868
/* 80417854  7C E0 07 34 */	extsh r0, r7
/* 80417858  2C 00 00 03 */	cmpwi r0, 3
/* 8041785C  41 82 00 0C */	beq lbl_80417868
/* 80417860  2C 00 00 04 */	cmpwi r0, 4
/* 80417864  40 82 00 30 */	bne lbl_80417894
lbl_80417868:
/* 80417868  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041786C  3B 60 00 01 */	li r27, 1
/* 80417870  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80417874  3C 63 00 02 */	addis r3, r3, 2
/* 80417878  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 8041787C  28 00 00 04 */	cmplwi r0, 4
/* 80417880  40 82 00 0C */	bne lbl_8041788C
/* 80417884  3B 80 00 06 */	li r28, 6
/* 80417888  48 00 00 A0 */	b lbl_80417928
lbl_8041788C:
/* 8041788C  3B 80 00 04 */	li r28, 4
/* 80417890  48 00 00 98 */	b lbl_80417928
lbl_80417894:
/* 80417894  2C 00 00 02 */	cmpwi r0, 2
/* 80417898  40 82 00 24 */	bne lbl_804178BC
/* 8041789C  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 804178A0  3B 60 00 00 */	li r27, 0
/* 804178A4  28 00 00 04 */	cmplwi r0, 4
/* 804178A8  40 82 00 0C */	bne lbl_804178B4
/* 804178AC  3B 80 00 06 */	li r28, 6
/* 804178B0  48 00 00 78 */	b lbl_80417928
lbl_804178B4:
/* 804178B4  3B 80 00 04 */	li r28, 4
/* 804178B8  48 00 00 70 */	b lbl_80417928
lbl_804178BC:
/* 804178BC  2C 00 00 05 */	cmpwi r0, 5
/* 804178C0  40 82 00 10 */	bne lbl_804178D0
/* 804178C4  3B 60 00 00 */	li r27, 0
/* 804178C8  3B 80 20 04 */	li r28, 0x2004
/* 804178CC  48 00 00 5C */	b lbl_80417928
lbl_804178D0:
/* 804178D0  2C 00 00 06 */	cmpwi r0, 6
/* 804178D4  40 82 00 10 */	bne lbl_804178E4
/* 804178D8  3B 60 00 00 */	li r27, 0
/* 804178DC  3B 80 40 04 */	li r28, 0x4004
/* 804178E0  48 00 00 48 */	b lbl_80417928
lbl_804178E4:
/* 804178E4  2C 00 00 07 */	cmpwi r0, 7
/* 804178E8  40 82 00 24 */	bne lbl_8041790C
/* 804178EC  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 804178F0  3B 60 00 00 */	li r27, 0
/* 804178F4  28 00 00 04 */	cmplwi r0, 4
/* 804178F8  40 82 00 0C */	bne lbl_80417904
/* 804178FC  3B 80 60 06 */	li r28, 0x6006
/* 80417900  48 00 00 28 */	b lbl_80417928
lbl_80417904:
/* 80417904  3B 80 60 04 */	li r28, 0x6004
/* 80417908  48 00 00 20 */	b lbl_80417928
lbl_8041790C:
/* 8041790C  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 80417910  38 60 00 05 */	li r3, 5
/* 80417914  28 00 00 04 */	cmplwi r0, 4
/* 80417918  40 82 00 08 */	bne lbl_80417920
/* 8041791C  38 60 00 07 */	li r3, 7
lbl_80417920:
/* 80417920  7C 7C 1B 78 */	mr r28, r3
/* 80417924  3B 60 00 00 */	li r27, 0
lbl_80417928:
/* 80417928  88 77 03 C4 */	lbz r3, 0x3c4(r23)
/* 8041792C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80417930  40 82 00 10 */	bne lbl_80417940
/* 80417934  A8 97 03 BE */	lha r4, 0x3be(r23)
/* 80417938  2C 04 00 0D */	cmpwi r4, 0xd
/* 8041793C  40 82 00 10 */	bne lbl_8041794C
lbl_80417940:
/* 80417940  63 80 60 00 */	ori r0, r28, 0x6000
/* 80417944  7C 1C 07 34 */	extsh r28, r0
/* 80417948  48 00 00 38 */	b lbl_80417980
lbl_8041794C:
/* 8041794C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80417950  40 82 00 0C */	bne lbl_8041795C
/* 80417954  2C 04 00 04 */	cmpwi r4, 4
/* 80417958  40 82 00 10 */	bne lbl_80417968
lbl_8041795C:
/* 8041795C  63 80 20 00 */	ori r0, r28, 0x2000
/* 80417960  7C 1C 07 34 */	extsh r28, r0
/* 80417964  48 00 00 1C */	b lbl_80417980
lbl_80417968:
/* 80417968  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8041796C  40 82 00 0C */	bne lbl_80417978
/* 80417970  2C 04 00 08 */	cmpwi r4, 8
/* 80417974  40 82 00 0C */	bne lbl_80417980
lbl_80417978:
/* 80417978  63 80 40 00 */	ori r0, r28, 0x4000
/* 8041797C  7C 1C 07 34 */	extsh r28, r0
lbl_80417980:
/* 80417980  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80417984  7C FF 07 34 */	extsh r31, r7
/* 80417988  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041798C  3F C3 00 02 */	addis r30, r3, 2
/* 80417990  48 00 02 9C */	b lbl_80417C2C
lbl_80417994:
/* 80417994  80 99 00 00 */	lwz r4, 0(r25)
/* 80417998  2C 1F 00 02 */	cmpwi r31, 2
/* 8041799C  80 79 00 04 */	lwz r3, 4(r25)
/* 804179A0  80 19 00 08 */	lwz r0, 8(r25)
/* 804179A4  90 81 00 20 */	stw r4, 0x20(r1)
/* 804179A8  90 61 00 24 */	stw r3, 0x24(r1)
/* 804179AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804179B0  41 82 00 E4 */	beq lbl_80417A94
/* 804179B4  2C 1F 00 05 */	cmpwi r31, 5
/* 804179B8  41 82 00 DC */	beq lbl_80417A94
/* 804179BC  2C 1F 00 06 */	cmpwi r31, 6
/* 804179C0  41 82 00 D4 */	beq lbl_80417A94
/* 804179C4  2C 1F 00 07 */	cmpwi r31, 7
/* 804179C8  41 82 00 CC */	beq lbl_80417A94
/* 804179CC  88 17 03 C4 */	lbz r0, 0x3c4(r23)
/* 804179D0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804179D4  41 82 00 68 */	beq lbl_80417A3C
/* 804179D8  A8 17 03 BE */	lha r0, 0x3be(r23)
/* 804179DC  2C 00 00 00 */	cmpwi r0, 0
/* 804179E0  40 82 00 5C */	bne lbl_80417A3C
/* 804179E4  4B C4 53 49 */	bl fqrand2
/* 804179E8  3C 60 80 64 */	lis r3, data_80643CC4@ha /* 0x80643CC4@ha */
/* 804179EC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804179F0  C0 43 3C C4 */	lfs f2, data_80643CC4@l(r3)  /* 0x80643CC4@l */
/* 804179F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804179F8  EC 00 08 2A */	fadds f0, f0, f1
/* 804179FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80417A00  4B C4 53 2D */	bl fqrand2
/* 80417A04  3C 60 80 64 */	lis r3, data_80643CC4@ha /* 0x80643CC4@ha */
/* 80417A08  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80417A0C  C0 43 3C C4 */	lfs f2, data_80643CC4@l(r3)  /* 0x80643CC4@l */
/* 80417A10  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417A14  EC 00 08 2A */	fadds f0, f0, f1
/* 80417A18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80417A1C  4B C4 53 11 */	bl fqrand2
/* 80417A20  3C 60 80 64 */	lis r3, data_80643CC4@ha /* 0x80643CC4@ha */
/* 80417A24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80417A28  C0 43 3C C4 */	lfs f2, data_80643CC4@l(r3)  /* 0x80643CC4@l */
/* 80417A2C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417A30  EC 00 08 2A */	fadds f0, f0, f1
/* 80417A34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80417A38  48 00 00 70 */	b lbl_80417AA8
lbl_80417A3C:
/* 80417A3C  4B C4 52 F1 */	bl fqrand2
/* 80417A40  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80643CC8@ha */
/* 80417A44  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80417A48  C0 43 3C C8 */	lfs f2, lit_674@l(r3)  /* 0x80643CC8@l */
/* 80417A4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417A50  EC 00 08 2A */	fadds f0, f0, f1
/* 80417A54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80417A58  4B C4 52 D5 */	bl fqrand2
/* 80417A5C  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80643CC8@ha */
/* 80417A60  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80417A64  C0 43 3C C8 */	lfs f2, lit_674@l(r3)  /* 0x80643CC8@l */
/* 80417A68  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417A6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80417A70  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80417A74  4B C4 52 B9 */	bl fqrand2
/* 80417A78  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80643CC8@ha */
/* 80417A7C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80417A80  C0 43 3C C8 */	lfs f2, lit_674@l(r3)  /* 0x80643CC8@l */
/* 80417A84  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417A88  EC 00 08 2A */	fadds f0, f0, f1
/* 80417A8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80417A90  48 00 00 18 */	b lbl_80417AA8
lbl_80417A94:
/* 80417A94  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80643CCC@ha */
/* 80417A98  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80417A9C  C0 03 3C CC */	lfs f0, lit_675@l(r3)  /* 0x80643CCC@l */
/* 80417AA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80417AA4  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80417AA8:
/* 80417AA8  2C 1F 00 03 */	cmpwi r31, 3
/* 80417AAC  41 82 00 50 */	beq lbl_80417AFC
/* 80417AB0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80417AB4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80417AB8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80417ABC  7F 07 C3 78 */	mr r7, r24
/* 80417AC0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80417AC4  7F 8A E3 78 */	mr r10, r28
/* 80417AC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80417ACC  38 81 00 14 */	addi r4, r1, 0x14
/* 80417AD0  81 7E 60 9C */	lwz r11, 0x609c(r30)
/* 80417AD4  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80417AD8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80417ADC  38 60 00 33 */	li r3, 0x33
/* 80417AE0  38 A0 00 02 */	li r5, 2
/* 80417AE4  38 C0 00 00 */	li r6, 0
/* 80417AE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80417AEC  39 20 00 00 */	li r9, 0
/* 80417AF0  81 8B 00 00 */	lwz r12, 0(r11)
/* 80417AF4  7D 89 03 A6 */	mtctr r12
/* 80417AF8  4E 80 04 21 */	bctrl 
lbl_80417AFC:
/* 80417AFC  28 1D 00 03 */	cmplwi r29, 3
/* 80417B00  40 82 01 2C */	bne lbl_80417C2C
/* 80417B04  88 17 03 C4 */	lbz r0, 0x3c4(r23)
/* 80417B08  80 B9 00 00 */	lwz r5, 0(r25)
/* 80417B0C  80 99 00 04 */	lwz r4, 4(r25)
/* 80417B10  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80417B14  80 79 00 08 */	lwz r3, 8(r25)
/* 80417B18  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80417B1C  90 81 00 24 */	stw r4, 0x24(r1)
/* 80417B20  90 61 00 28 */	stw r3, 0x28(r1)
/* 80417B24  41 82 00 68 */	beq lbl_80417B8C
/* 80417B28  A8 17 03 BE */	lha r0, 0x3be(r23)
/* 80417B2C  2C 00 00 00 */	cmpwi r0, 0
/* 80417B30  40 82 00 5C */	bne lbl_80417B8C
/* 80417B34  4B C4 51 F9 */	bl fqrand2
/* 80417B38  3C 60 80 64 */	lis r3, data_80643CC4@ha /* 0x80643CC4@ha */
/* 80417B3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80417B40  C0 43 3C C4 */	lfs f2, data_80643CC4@l(r3)  /* 0x80643CC4@l */
/* 80417B44  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417B48  EC 00 08 2A */	fadds f0, f0, f1
/* 80417B4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80417B50  4B C4 51 DD */	bl fqrand2
/* 80417B54  3C 60 80 64 */	lis r3, data_80643CC4@ha /* 0x80643CC4@ha */
/* 80417B58  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80417B5C  C0 43 3C C4 */	lfs f2, data_80643CC4@l(r3)  /* 0x80643CC4@l */
/* 80417B60  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417B64  EC 00 08 2A */	fadds f0, f0, f1
/* 80417B68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80417B6C  4B C4 51 C1 */	bl fqrand2
/* 80417B70  3C 60 80 64 */	lis r3, data_80643CC4@ha /* 0x80643CC4@ha */
/* 80417B74  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80417B78  C0 43 3C C4 */	lfs f2, data_80643CC4@l(r3)  /* 0x80643CC4@l */
/* 80417B7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417B80  EC 00 08 2A */	fadds f0, f0, f1
/* 80417B84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80417B88  48 00 00 58 */	b lbl_80417BE0
lbl_80417B8C:
/* 80417B8C  4B C4 51 A1 */	bl fqrand2
/* 80417B90  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80643CC8@ha */
/* 80417B94  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80417B98  C0 43 3C C8 */	lfs f2, lit_674@l(r3)  /* 0x80643CC8@l */
/* 80417B9C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417BA0  EC 00 08 2A */	fadds f0, f0, f1
/* 80417BA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80417BA8  4B C4 51 85 */	bl fqrand2
/* 80417BAC  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80643CC8@ha */
/* 80417BB0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80417BB4  C0 43 3C C8 */	lfs f2, lit_674@l(r3)  /* 0x80643CC8@l */
/* 80417BB8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417BBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80417BC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80417BC4  4B C4 51 69 */	bl fqrand2
/* 80417BC8  3C 60 80 64 */	lis r3, lit_674@ha /* 0x80643CC8@ha */
/* 80417BCC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80417BD0  C0 43 3C C8 */	lfs f2, lit_674@l(r3)  /* 0x80643CC8@l */
/* 80417BD4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80417BD8  EC 00 08 2A */	fadds f0, f0, f1
/* 80417BDC  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80417BE0:
/* 80417BE0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80417BE4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80417BE8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80417BEC  7F 07 C3 78 */	mr r7, r24
/* 80417BF0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80417BF4  7F 6A DB 78 */	mr r10, r27
/* 80417BF8  90 81 00 08 */	stw r4, 8(r1)
/* 80417BFC  38 81 00 08 */	addi r4, r1, 8
/* 80417C00  81 7E 60 9C */	lwz r11, 0x609c(r30)
/* 80417C04  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80417C08  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80417C0C  38 60 00 34 */	li r3, 0x34
/* 80417C10  38 A0 00 02 */	li r5, 2
/* 80417C14  38 C0 00 00 */	li r6, 0
/* 80417C18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80417C1C  39 20 00 00 */	li r9, 0
/* 80417C20  81 8B 00 00 */	lwz r12, 0(r11)
/* 80417C24  7D 89 03 A6 */	mtctr r12
/* 80417C28  4E 80 04 21 */	bctrl 
lbl_80417C2C:
/* 80417C2C  7F 40 07 35 */	extsh. r0, r26
/* 80417C30  3B 5A FF FF */	addi r26, r26, -1
/* 80417C34  40 82 FD 60 */	bne lbl_80417994
/* 80417C38  39 61 00 60 */	addi r11, r1, 0x60
/* 80417C3C  4B C8 32 CD */	bl func_8009AF08
/* 80417C40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80417C44  7C 08 03 A6 */	mtlr r0
/* 80417C48  38 21 00 60 */	addi r1, r1, 0x60
/* 80417C4C  4E 80 00 20 */	blr 