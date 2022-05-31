lbl_805DD768:
/* 805DD768  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DD76C  7C 08 02 A6 */	mflr r0
/* 805DD770  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DD774  39 61 00 30 */	addi r11, r1, 0x30
/* 805DD778  4B AB D7 49 */	bl func_8009AEC0
/* 805DD77C  7C 79 1B 78 */	mr r25, r3
/* 805DD780  7C 9C 23 78 */	mr r28, r4
/* 805DD784  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805DD788  7C BA 2B 78 */	mr r26, r5
/* 805DD78C  80 03 00 04 */	lwz r0, 4(r3)
/* 805DD790  7C DB 33 78 */	mr r27, r6
/* 805DD794  80 7F 09 7C */	lwz r3, 0x97c(r31)
/* 805DD798  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805DD79C  83 BF 09 80 */	lwz r29, 0x980(r31)
/* 805DD7A0  81 83 02 EC */	lwz r12, 0x2ec(r3)
/* 805DD7A4  38 63 00 08 */	addi r3, r3, 8
/* 805DD7A8  3B 04 00 54 */	addi r24, r4, 0x54
/* 805DD7AC  7F 1F C2 14 */	add r24, r31, r24
/* 805DD7B0  7D 89 03 A6 */	mtctr r12
/* 805DD7B4  4E 80 04 21 */	bctrl 
/* 805DD7B8  88 1D 03 66 */	lbz r0, 0x366(r29)
/* 805DD7BC  7C 66 1B 78 */	mr r6, r3
/* 805DD7C0  28 00 00 00 */	cmplwi r0, 0
/* 805DD7C4  41 82 00 10 */	beq lbl_805DD7D4
/* 805DD7C8  8B 9D 03 64 */	lbz r28, 0x364(r29)
/* 805DD7CC  88 DD 03 65 */	lbz r6, 0x365(r29)
/* 805DD7D0  48 00 00 08 */	b lbl_805DD7D8
lbl_805DD7D4:
/* 805DD7D4  83 9C 00 38 */	lwz r28, 0x38(r28)
lbl_805DD7D8:
/* 805DD7D8  28 1A 00 00 */	cmplwi r26, 0
/* 805DD7DC  41 82 03 20 */	beq lbl_805DDAFC
/* 805DD7E0  A3 DA 00 00 */	lhz r30, 0(r26)
/* 805DD7E4  28 1E 00 00 */	cmplwi r30, 0
/* 805DD7E8  41 82 03 14 */	beq lbl_805DDAFC
/* 805DD7EC  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 805DD7F0  41 82 03 0C */	beq lbl_805DDAFC
/* 805DD7F4  2C 1C 00 18 */	cmpwi r28, 0x18
/* 805DD7F8  41 82 03 04 */	beq lbl_805DDAFC
/* 805DD7FC  7F 23 CB 78 */	mr r3, r25
/* 805DD800  7F 04 C3 78 */	mr r4, r24
/* 805DD804  7F 85 E3 78 */	mr r5, r28
/* 805DD808  38 E0 00 02 */	li r7, 2
/* 805DD80C  39 00 00 00 */	li r8, 0
/* 805DD810  48 01 92 BD */	bl mTG_mark_mainX
/* 805DD814  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805DD818  40 82 00 44 */	bne lbl_805DD85C
/* 805DD81C  40 82 00 40 */	bne lbl_805DD85C
/* 805DD820  A0 1D 02 34 */	lhz r0, 0x234(r29)
/* 805DD824  28 00 00 00 */	cmplwi r0, 0
/* 805DD828  41 82 00 5C */	beq lbl_805DD884
/* 805DD82C  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805DD830  41 80 00 0C */	blt lbl_805DD83C
/* 805DD834  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805DD838  40 81 00 4C */	ble lbl_805DD884
lbl_805DD83C:
/* 805DD83C  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805DD840  41 80 00 0C */	blt lbl_805DD84C
/* 805DD844  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805DD848  40 81 00 3C */	ble lbl_805DD884
lbl_805DD84C:
/* 805DD84C  28 00 FE 99 */	cmplwi r0, 0xfe99
/* 805DD850  41 80 00 0C */	blt lbl_805DD85C
/* 805DD854  28 00 FE A0 */	cmplwi r0, 0xfea0
/* 805DD858  40 81 00 2C */	ble lbl_805DD884
lbl_805DD85C:
/* 805DD85C  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805DD860  41 82 00 24 */	beq lbl_805DD884
/* 805DD864  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805DD868  41 82 00 1C */	beq lbl_805DD884
/* 805DD86C  2C 1C 00 19 */	cmpwi r28, 0x19
/* 805DD870  41 82 00 14 */	beq lbl_805DD884
/* 805DD874  2C 1C 00 17 */	cmpwi r28, 0x17
/* 805DD878  41 82 00 0C */	beq lbl_805DD884
/* 805DD87C  A0 1D 02 34 */	lhz r0, 0x234(r29)
/* 805DD880  B0 1A 00 00 */	sth r0, 0(r26)
lbl_805DD884:
/* 805DD884  28 1E FE 20 */	cmplwi r30, 0xfe20
/* 805DD888  41 80 00 0C */	blt lbl_805DD894
/* 805DD88C  28 1E FE 27 */	cmplwi r30, 0xfe27
/* 805DD890  40 81 02 54 */	ble lbl_805DDAE4
lbl_805DD894:
/* 805DD894  28 1E 22 24 */	cmplwi r30, 0x2224
/* 805DD898  41 80 00 0C */	blt lbl_805DD8A4
/* 805DD89C  28 1E 22 2B */	cmplwi r30, 0x222b
/* 805DD8A0  40 81 02 44 */	ble lbl_805DDAE4
lbl_805DD8A4:
/* 805DD8A4  A0 BA 00 00 */	lhz r5, 0(r26)
/* 805DD8A8  28 05 FE 99 */	cmplwi r5, 0xfe99
/* 805DD8AC  41 80 00 0C */	blt lbl_805DD8B8
/* 805DD8B0  28 05 FE A0 */	cmplwi r5, 0xfea0
/* 805DD8B4  40 81 02 30 */	ble lbl_805DDAE4
lbl_805DD8B8:
/* 805DD8B8  2C 1C 00 03 */	cmpwi r28, 3
/* 805DD8BC  41 82 01 18 */	beq lbl_805DD9D4
/* 805DD8C0  2C 1C 00 04 */	cmpwi r28, 4
/* 805DD8C4  41 82 01 10 */	beq lbl_805DD9D4
/* 805DD8C8  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805DD8CC  40 82 00 40 */	bne lbl_805DD90C
/* 805DD8D0  40 82 01 04 */	bne lbl_805DD9D4
/* 805DD8D4  28 05 00 00 */	cmplwi r5, 0
/* 805DD8D8  41 82 00 34 */	beq lbl_805DD90C
/* 805DD8DC  28 05 FE 31 */	cmplwi r5, 0xfe31
/* 805DD8E0  41 80 00 0C */	blt lbl_805DD8EC
/* 805DD8E4  28 05 FE 38 */	cmplwi r5, 0xfe38
/* 805DD8E8  40 81 00 24 */	ble lbl_805DD90C
lbl_805DD8EC:
/* 805DD8EC  28 05 FE 39 */	cmplwi r5, 0xfe39
/* 805DD8F0  41 80 00 0C */	blt lbl_805DD8FC
/* 805DD8F4  28 05 FE 98 */	cmplwi r5, 0xfe98
/* 805DD8F8  40 81 00 14 */	ble lbl_805DD90C
lbl_805DD8FC:
/* 805DD8FC  28 05 FE 99 */	cmplwi r5, 0xfe99
/* 805DD900  41 80 00 D4 */	blt lbl_805DD9D4
/* 805DD904  28 05 FE A0 */	cmplwi r5, 0xfea0
/* 805DD908  41 81 00 CC */	bgt lbl_805DD9D4
lbl_805DD90C:
/* 805DD90C  2C 1C 00 13 */	cmpwi r28, 0x13
/* 805DD910  41 82 00 6C */	beq lbl_805DD97C
/* 805DD914  40 80 00 10 */	bge lbl_805DD924
/* 805DD918  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805DD91C  40 80 00 10 */	bge lbl_805DD92C
/* 805DD920  48 00 00 5C */	b lbl_805DD97C
lbl_805DD924:
/* 805DD924  2C 1C 00 15 */	cmpwi r28, 0x15
/* 805DD928  40 80 00 54 */	bge lbl_805DD97C
lbl_805DD92C:
/* 805DD92C  28 05 00 00 */	cmplwi r5, 0
/* 805DD930  41 82 00 34 */	beq lbl_805DD964
/* 805DD934  28 05 FE 31 */	cmplwi r5, 0xfe31
/* 805DD938  41 80 00 0C */	blt lbl_805DD944
/* 805DD93C  28 05 FE 38 */	cmplwi r5, 0xfe38
/* 805DD940  40 81 00 24 */	ble lbl_805DD964
lbl_805DD944:
/* 805DD944  28 05 FE 39 */	cmplwi r5, 0xfe39
/* 805DD948  41 80 00 0C */	blt lbl_805DD954
/* 805DD94C  28 05 FE 98 */	cmplwi r5, 0xfe98
/* 805DD950  40 81 00 14 */	ble lbl_805DD964
lbl_805DD954:
/* 805DD954  28 05 FE 99 */	cmplwi r5, 0xfe99
/* 805DD958  41 80 00 1C */	blt lbl_805DD974
/* 805DD95C  28 05 FE A0 */	cmplwi r5, 0xfea0
/* 805DD960  41 81 00 14 */	bgt lbl_805DD974
lbl_805DD964:
/* 805DD964  A0 9D 02 34 */	lhz r4, 0x234(r29)
/* 805DD968  7F 23 CB 78 */	mr r3, r25
/* 805DD96C  4B FE FD FD */	bl mCO_swap_image
/* 805DD970  48 00 00 10 */	b lbl_805DD980
lbl_805DD974:
/* 805DD974  B3 DD 02 34 */	sth r30, 0x234(r29)
/* 805DD978  48 00 00 08 */	b lbl_805DD980
lbl_805DD97C:
/* 805DD97C  B3 DD 02 34 */	sth r30, 0x234(r29)
lbl_805DD980:
/* 805DD980  38 00 00 02 */	li r0, 2
/* 805DD984  38 60 04 1C */	li r3, 0x41c
/* 805DD988  B0 1D 02 32 */	sth r0, 0x232(r29)
/* 805DD98C  48 05 03 79 */	bl sAdo_SysTrgStart
/* 805DD990  28 1B 00 00 */	cmplwi r27, 0
/* 805DD994  41 82 02 58 */	beq lbl_805DDBEC
/* 805DD998  88 1B 00 2E */	lbz r0, 0x2e(r27)
/* 805DD99C  28 00 00 00 */	cmplwi r0, 0
/* 805DD9A0  40 82 00 18 */	bne lbl_805DD9B8
/* 805DD9A4  38 60 00 03 */	li r3, 3
/* 805DD9A8  38 00 00 01 */	li r0, 1
/* 805DD9AC  98 7B 00 2E */	stb r3, 0x2e(r27)
/* 805DD9B0  90 1D 03 60 */	stw r0, 0x360(r29)
/* 805DD9B4  48 00 02 38 */	b lbl_805DDBEC
lbl_805DD9B8:
/* 805DD9B8  28 00 00 02 */	cmplwi r0, 2
/* 805DD9BC  40 82 02 30 */	bne lbl_805DDBEC
/* 805DD9C0  38 60 00 04 */	li r3, 4
/* 805DD9C4  38 00 00 01 */	li r0, 1
/* 805DD9C8  98 7B 00 2E */	stb r3, 0x2e(r27)
/* 805DD9CC  90 1D 03 60 */	stw r0, 0x360(r29)
/* 805DD9D0  48 00 02 1C */	b lbl_805DDBEC
lbl_805DD9D4:
/* 805DD9D4  38 60 00 00 */	li r3, 0
/* 805DD9D8  38 00 00 01 */	li r0, 1
/* 805DD9DC  B0 7D 02 34 */	sth r3, 0x234(r29)
/* 805DD9E0  38 C0 00 00 */	li r6, 0
/* 805DD9E4  90 7D 03 60 */	stw r3, 0x360(r29)
/* 805DD9E8  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 805DD9EC  B0 7D 02 32 */	sth r3, 0x232(r29)
/* 805DD9F0  88 1D 03 64 */	lbz r0, 0x364(r29)
/* 805DD9F4  28 00 00 00 */	cmplwi r0, 0
/* 805DD9F8  40 82 00 40 */	bne lbl_805DDA38
/* 805DD9FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DDA00  88 9D 03 65 */	lbz r4, 0x365(r29)
/* 805DDA04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DDA08  3C 63 00 02 */	addis r3, r3, 2
/* 805DDA0C  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 805DDA10  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805DDA14  7C A3 02 14 */	add r5, r3, r0
/* 805DDA18  A0 05 00 68 */	lhz r0, 0x68(r5)
/* 805DDA1C  28 00 00 00 */	cmplwi r0, 0
/* 805DDA20  40 82 00 50 */	bne lbl_805DDA70
/* 805DDA24  7F C5 F3 78 */	mr r5, r30
/* 805DDA28  38 C0 00 00 */	li r6, 0
/* 805DDA2C  4B E0 33 FD */	bl mPr_SetPossessionItem
/* 805DDA30  38 C0 00 01 */	li r6, 1
/* 805DDA34  48 00 00 3C */	b lbl_805DDA70
lbl_805DDA38:
/* 805DDA38  28 00 00 01 */	cmplwi r0, 1
/* 805DDA3C  40 82 00 34 */	bne lbl_805DDA70
/* 805DDA40  88 1D 03 65 */	lbz r0, 0x365(r29)
/* 805DDA44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DDA48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DDA4C  3C 63 00 02 */	addis r3, r3, 2
/* 805DDA50  1C 00 01 2A */	mulli r0, r0, 0x12a
/* 805DDA54  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805DDA58  7C 63 02 14 */	add r3, r3, r0
/* 805DDA5C  A0 03 05 0C */	lhz r0, 0x50c(r3)
/* 805DDA60  28 00 00 00 */	cmplwi r0, 0
/* 805DDA64  40 82 00 0C */	bne lbl_805DDA70
/* 805DDA68  B3 C3 05 0C */	sth r30, 0x50c(r3)
/* 805DDA6C  38 C0 00 01 */	li r6, 1
lbl_805DDA70:
/* 805DDA70  2C 06 00 00 */	cmpwi r6, 0
/* 805DDA74  40 82 00 44 */	bne lbl_805DDAB8
/* 805DDA78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DDA7C  38 80 00 00 */	li r4, 0
/* 805DDA80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DDA84  3F 43 00 02 */	addis r26, r3, 2
/* 805DDA88  80 7A 61 3C */	lwz r3, 0x613c(r26)
/* 805DDA8C  4B E0 2C 9D */	bl mPr_GetPossessionItemIdx
/* 805DDA90  7C 64 1B 79 */	or. r4, r3, r3
/* 805DDA94  41 80 00 18 */	blt lbl_805DDAAC
/* 805DDA98  80 7A 61 3C */	lwz r3, 0x613c(r26)
/* 805DDA9C  7F C5 F3 78 */	mr r5, r30
/* 805DDAA0  38 C0 00 00 */	li r6, 0
/* 805DDAA4  4B E0 33 85 */	bl mPr_SetPossessionItem
/* 805DDAA8  48 00 00 10 */	b lbl_805DDAB8
lbl_805DDAAC:
/* 805DDAAC  B3 DD 02 34 */	sth r30, 0x234(r29)
/* 805DDAB0  38 00 00 02 */	li r0, 2
/* 805DDAB4  B0 1D 02 32 */	sth r0, 0x232(r29)
lbl_805DDAB8:
/* 805DDAB8  2C 1C 00 04 */	cmpwi r28, 4
/* 805DDABC  40 82 01 30 */	bne lbl_805DDBEC
/* 805DDAC0  A0 1D 02 34 */	lhz r0, 0x234(r29)
/* 805DDAC4  28 00 00 00 */	cmplwi r0, 0
/* 805DDAC8  40 82 00 10 */	bne lbl_805DDAD8
/* 805DDACC  38 60 00 60 */	li r3, 0x60
/* 805DDAD0  48 05 02 35 */	bl sAdo_SysTrgStart
/* 805DDAD4  48 00 01 18 */	b lbl_805DDBEC
lbl_805DDAD8:
/* 805DDAD8  38 60 04 1C */	li r3, 0x41c
/* 805DDADC  48 05 02 29 */	bl sAdo_SysTrgStart
/* 805DDAE0  48 00 01 0C */	b lbl_805DDBEC
lbl_805DDAE4:
/* 805DDAE4  38 60 00 00 */	li r3, 0
/* 805DDAE8  38 00 00 01 */	li r0, 1
/* 805DDAEC  B0 7D 02 34 */	sth r3, 0x234(r29)
/* 805DDAF0  B0 7D 02 32 */	sth r3, 0x232(r29)
/* 805DDAF4  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 805DDAF8  48 00 00 F4 */	b lbl_805DDBEC
lbl_805DDAFC:
/* 805DDAFC  80 19 00 04 */	lwz r0, 4(r25)
/* 805DDB00  7F 23 CB 78 */	mr r3, r25
/* 805DDB04  81 39 00 2C */	lwz r9, 0x2c(r25)
/* 805DDB08  7F 85 E3 78 */	mr r5, r28
/* 805DDB0C  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805DDB10  38 E0 00 02 */	li r7, 2
/* 805DDB14  39 00 00 00 */	li r8, 0
/* 805DDB18  3B 04 00 54 */	addi r24, r4, 0x54
/* 805DDB1C  7F 09 C2 14 */	add r24, r9, r24
/* 805DDB20  7F 04 C3 78 */	mr r4, r24
/* 805DDB24  48 01 8F A9 */	bl mTG_mark_mainX
/* 805DDB28  2C 1C 00 18 */	cmpwi r28, 0x18
/* 805DDB2C  41 82 00 0C */	beq lbl_805DDB38
/* 805DDB30  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 805DDB34  40 82 00 18 */	bne lbl_805DDB4C
lbl_805DDB38:
/* 805DDB38  A0 9D 02 34 */	lhz r4, 0x234(r29)
/* 805DDB3C  7F 23 CB 78 */	mr r3, r25
/* 805DDB40  A0 BA 00 00 */	lhz r5, 0(r26)
/* 805DDB44  4B FF E8 31 */	bl mGB_copy_image
/* 805DDB48  48 00 00 44 */	b lbl_805DDB8C
lbl_805DDB4C:
/* 805DDB4C  28 1A 00 00 */	cmplwi r26, 0
/* 805DDB50  41 82 00 3C */	beq lbl_805DDB8C
/* 805DDB54  A0 1D 02 34 */	lhz r0, 0x234(r29)
/* 805DDB58  28 1B 00 00 */	cmplwi r27, 0
/* 805DDB5C  B0 1A 00 00 */	sth r0, 0(r26)
/* 805DDB60  41 82 00 2C */	beq lbl_805DDB8C
/* 805DDB64  88 1B 00 2E */	lbz r0, 0x2e(r27)
/* 805DDB68  28 00 00 00 */	cmplwi r0, 0
/* 805DDB6C  40 82 00 10 */	bne lbl_805DDB7C
/* 805DDB70  38 00 00 03 */	li r0, 3
/* 805DDB74  98 1B 00 2E */	stb r0, 0x2e(r27)
/* 805DDB78  48 00 00 14 */	b lbl_805DDB8C
lbl_805DDB7C:
/* 805DDB7C  28 00 00 02 */	cmplwi r0, 2
/* 805DDB80  40 82 00 0C */	bne lbl_805DDB8C
/* 805DDB84  38 00 00 04 */	li r0, 4
/* 805DDB88  98 1B 00 2E */	stb r0, 0x2e(r27)
lbl_805DDB8C:
/* 805DDB8C  38 60 00 00 */	li r3, 0
/* 805DDB90  38 00 00 01 */	li r0, 1
/* 805DDB94  B0 7D 02 34 */	sth r3, 0x234(r29)
/* 805DDB98  2C 1C 00 03 */	cmpwi r28, 3
/* 805DDB9C  90 7D 03 60 */	stw r3, 0x360(r29)
/* 805DDBA0  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 805DDBA4  B0 7D 02 32 */	sth r3, 0x232(r29)
/* 805DDBA8  41 82 00 44 */	beq lbl_805DDBEC
/* 805DDBAC  80 18 00 00 */	lwz r0, 0(r24)
/* 805DDBB0  2C 00 00 01 */	cmpwi r0, 1
/* 805DDBB4  40 82 00 30 */	bne lbl_805DDBE4
/* 805DDBB8  80 18 00 38 */	lwz r0, 0x38(r24)
/* 805DDBBC  2C 00 00 0D */	cmpwi r0, 0xd
/* 805DDBC0  40 82 00 24 */	bne lbl_805DDBE4
/* 805DDBC4  80 B9 00 2C */	lwz r5, 0x2c(r25)
/* 805DDBC8  7F 23 CB 78 */	mr r3, r25
/* 805DDBCC  7F 04 C3 78 */	mr r4, r24
/* 805DDBD0  80 A5 09 7C */	lwz r5, 0x97c(r5)
/* 805DDBD4  81 85 02 DC */	lwz r12, 0x2dc(r5)
/* 805DDBD8  7D 89 03 A6 */	mtctr r12
/* 805DDBDC  4E 80 04 21 */	bctrl 
/* 805DDBE0  48 00 00 0C */	b lbl_805DDBEC
lbl_805DDBE4:
/* 805DDBE4  38 60 00 60 */	li r3, 0x60
/* 805DDBE8  48 05 01 1D */	bl sAdo_SysTrgStart
lbl_805DDBEC:
/* 805DDBEC  80 99 00 2C */	lwz r4, 0x2c(r25)
/* 805DDBF0  7F 23 CB 78 */	mr r3, r25
/* 805DDBF4  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DDBF8  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805DDBFC  7D 89 03 A6 */	mtctr r12
/* 805DDC00  4E 80 04 21 */	bctrl 
/* 805DDC04  A8 1F 00 04 */	lha r0, 4(r31)
/* 805DDC08  2C 00 00 01 */	cmpwi r0, 1
/* 805DDC0C  40 82 00 0C */	bne lbl_805DDC18
/* 805DDC10  38 00 00 00 */	li r0, 0
/* 805DDC14  B0 1F 00 08 */	sth r0, 8(r31)
lbl_805DDC18:
/* 805DDC18  39 61 00 30 */	addi r11, r1, 0x30
/* 805DDC1C  4B AB D2 F1 */	bl func_8009AF0C
/* 805DDC20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DDC24  7C 08 03 A6 */	mtlr r0
/* 805DDC28  38 21 00 30 */	addi r1, r1, 0x30
/* 805DDC2C  4E 80 00 20 */	blr 
