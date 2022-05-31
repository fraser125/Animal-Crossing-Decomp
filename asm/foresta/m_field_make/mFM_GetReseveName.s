lbl_803A466C:
/* 803A466C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A4670  7C 08 02 A6 */	mflr r0
/* 803A4674  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A4678  39 61 00 30 */	addi r11, r1, 0x30
/* 803A467C  4B CF 68 55 */	bl func_8009AED0
/* 803A4680  2C 03 00 00 */	cmpwi r3, 0
/* 803A4684  38 00 58 13 */	li r0, 0x5813
/* 803A4688  3B E0 00 00 */	li r31, 0
/* 803A468C  3B C0 00 00 */	li r30, 0
/* 803A4690  3B A0 00 00 */	li r29, 0
/* 803A4694  3B 80 00 00 */	li r28, 0
/* 803A4698  40 81 02 24 */	ble lbl_803A48BC
/* 803A469C  2C 03 00 06 */	cmpwi r3, 6
/* 803A46A0  40 80 02 1C */	bge lbl_803A48BC
/* 803A46A4  2C 04 00 00 */	cmpwi r4, 0
/* 803A46A8  40 81 02 14 */	ble lbl_803A48BC
/* 803A46AC  2C 04 00 07 */	cmpwi r4, 7
/* 803A46B0  40 80 02 0C */	bge lbl_803A48BC
/* 803A46B4  38 04 FF FF */	addi r0, r4, -1
/* 803A46B8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A46BC  1C C0 0A 00 */	mulli r6, r0, 0xa00
/* 803A46C0  3D 00 80 65 */	lis r8, g_block_kind_p@ha /* 0x80653D20@ha */
/* 803A46C4  38 03 FF FF */	addi r0, r3, -1
/* 803A46C8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803A46CC  1C E4 00 07 */	mulli r7, r4, 7
/* 803A46D0  54 00 48 2C */	slwi r0, r0, 9
/* 803A46D4  7C 85 32 14 */	add r4, r5, r6
/* 803A46D8  80 C8 3D 20 */	lwz r6, g_block_kind_p@l(r8)  /* 0x80653D20@l */
/* 803A46DC  7C 63 3A 14 */	add r3, r3, r7
/* 803A46E0  7C 84 02 14 */	add r4, r4, r0
/* 803A46E4  54 65 10 3A */	slwi r5, r3, 2
/* 803A46E8  38 00 01 00 */	li r0, 0x100
/* 803A46EC  38 60 00 01 */	li r3, 1
/* 803A46F0  3C E4 00 01 */	addis r7, r4, 1
/* 803A46F4  7C C6 28 2E */	lwzx r6, r6, r5
/* 803A46F8  7C 09 03 A6 */	mtctr r0
/* 803A46FC  38 E7 37 A8 */	addi r7, r7, 0x37a8
lbl_803A4700:
/* 803A4700  A0 87 00 00 */	lhz r4, 0(r7)
/* 803A4704  28 04 58 10 */	cmplwi r4, 0x5810
/* 803A4708  41 80 00 18 */	blt lbl_803A4720
/* 803A470C  28 04 58 24 */	cmplwi r4, 0x5824
/* 803A4710  41 81 00 10 */	bgt lbl_803A4720
/* 803A4714  38 04 A7 F0 */	addi r0, r4, -22544
/* 803A4718  7C 60 00 30 */	slw r0, r3, r0
/* 803A471C  7F FF 03 78 */	or r31, r31, r0
lbl_803A4720:
/* 803A4720  38 E7 00 02 */	addi r7, r7, 2
/* 803A4724  42 00 FF DC */	bdnz lbl_803A4700
/* 803A4728  38 A0 00 00 */	li r5, 0
/* 803A472C  38 00 00 07 */	li r0, 7
/* 803A4730  7C A3 2B 78 */	mr r3, r5
/* 803A4734  38 80 00 01 */	li r4, 1
/* 803A4738  7C 09 03 A6 */	mtctr r0
lbl_803A473C:
/* 803A473C  7F E0 1E 30 */	sraw r0, r31, r3
/* 803A4740  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 803A4744  2C 00 00 07 */	cmpwi r0, 7
/* 803A4748  40 82 00 10 */	bne lbl_803A4758
/* 803A474C  7C 80 28 30 */	slw r0, r4, r5
/* 803A4750  7F C0 03 78 */	or r0, r30, r0
/* 803A4754  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_803A4758:
/* 803A4758  7F E0 1E 30 */	sraw r0, r31, r3
/* 803A475C  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 803A4760  2C 00 00 07 */	cmpwi r0, 7
/* 803A4764  41 82 00 08 */	beq lbl_803A476C
/* 803A4768  3B 9C 00 01 */	addi r28, r28, 1
lbl_803A476C:
/* 803A476C  38 A5 00 01 */	addi r5, r5, 1
/* 803A4770  38 63 00 03 */	addi r3, r3, 3
/* 803A4774  42 00 FF C8 */	bdnz lbl_803A473C
/* 803A4778  54 C0 06 30 */	rlwinm r0, r6, 0, 0x18, 0x18
/* 803A477C  28 00 00 80 */	cmplwi r0, 0x80
/* 803A4780  41 82 00 18 */	beq lbl_803A4798
/* 803A4784  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 803A4788  40 82 00 10 */	bne lbl_803A4798
/* 803A478C  63 C0 00 01 */	ori r0, r30, 1
/* 803A4790  3B 9C FF FF */	addi r28, r28, -1
/* 803A4794  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_803A4798:
/* 803A4798  4B CB 85 5D */	bl fqrand
/* 803A479C  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 803A47A0  3C 60 43 30 */	lis r3, 0x4330
/* 803A47A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A47A8  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80641F04@ha */
/* 803A47AC  C8 44 1F 04 */	lfd f2, lit_640@l(r4)  /* 0x80641F04@l */
/* 803A47B0  38 00 00 07 */	li r0, 7
/* 803A47B4  90 61 00 08 */	stw r3, 8(r1)
/* 803A47B8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 803A47BC  38 80 00 00 */	li r4, 0
/* 803A47C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A47C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A47C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A47CC  FC 00 00 1E */	fctiwz f0, f0
/* 803A47D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803A47D4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803A47D8  7C 09 03 A6 */	mtctr r0
lbl_803A47DC:
/* 803A47DC  7C 60 26 30 */	sraw r0, r3, r4
/* 803A47E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A47E4  40 82 00 18 */	bne lbl_803A47FC
/* 803A47E8  2C 05 00 00 */	cmpwi r5, 0
/* 803A47EC  41 81 00 0C */	bgt lbl_803A47F8
/* 803A47F0  7C 9D 23 78 */	mr r29, r4
/* 803A47F4  48 00 00 10 */	b lbl_803A4804
lbl_803A47F8:
/* 803A47F8  38 A5 FF FF */	addi r5, r5, -1
lbl_803A47FC:
/* 803A47FC  38 84 00 01 */	addi r4, r4, 1
/* 803A4800  42 00 FF DC */	bdnz lbl_803A47DC
lbl_803A4804:
/* 803A4804  1F BD 00 03 */	mulli r29, r29, 3
/* 803A4808  3B 80 00 00 */	li r28, 0
/* 803A480C  38 7D 00 03 */	addi r3, r29, 3
/* 803A4810  7C 1D 18 50 */	subf r0, r29, r3
/* 803A4814  7F A4 EB 78 */	mr r4, r29
/* 803A4818  7C 09 03 A6 */	mtctr r0
/* 803A481C  7C 1D 18 00 */	cmpw r29, r3
/* 803A4820  40 80 00 1C */	bge lbl_803A483C
lbl_803A4824:
/* 803A4824  7F E0 26 30 */	sraw r0, r31, r4
/* 803A4828  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A482C  40 82 00 08 */	bne lbl_803A4834
/* 803A4830  3B 9C 00 01 */	addi r28, r28, 1
lbl_803A4834:
/* 803A4834  38 84 00 01 */	addi r4, r4, 1
/* 803A4838  42 00 FF EC */	bdnz lbl_803A4824
lbl_803A483C:
/* 803A483C  4B CB 84 B9 */	bl fqrand
/* 803A4840  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 803A4844  3C 00 43 30 */	lis r0, 0x4330
/* 803A4848  90 61 00 14 */	stw r3, 0x14(r1)
/* 803A484C  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80641F04@ha */
/* 803A4850  C8 44 1F 04 */	lfd f2, lit_640@l(r4)  /* 0x80641F04@l */
/* 803A4854  38 7D 00 03 */	addi r3, r29, 3
/* 803A4858  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A485C  7C 1D 18 50 */	subf r0, r29, r3
/* 803A4860  7F A5 EB 78 */	mr r5, r29
/* 803A4864  38 80 00 00 */	li r4, 0
/* 803A4868  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A486C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A4870  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A4874  FC 00 00 1E */	fctiwz f0, f0
/* 803A4878  D8 01 00 08 */	stfd f0, 8(r1)
/* 803A487C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803A4880  7C 09 03 A6 */	mtctr r0
/* 803A4884  7C 1D 18 00 */	cmpw r29, r3
/* 803A4888  40 80 00 2C */	bge lbl_803A48B4
lbl_803A488C:
/* 803A488C  7F E0 2E 30 */	sraw r0, r31, r5
/* 803A4890  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803A4894  40 82 00 18 */	bne lbl_803A48AC
/* 803A4898  2C 06 00 00 */	cmpwi r6, 0
/* 803A489C  41 81 00 0C */	bgt lbl_803A48A8
/* 803A48A0  7C A4 2B 78 */	mr r4, r5
/* 803A48A4  48 00 00 10 */	b lbl_803A48B4
lbl_803A48A8:
/* 803A48A8  38 C6 FF FF */	addi r6, r6, -1
lbl_803A48AC:
/* 803A48AC  38 A5 00 01 */	addi r5, r5, 1
/* 803A48B0  42 00 FF DC */	bdnz lbl_803A488C
lbl_803A48B4:
/* 803A48B4  38 04 58 10 */	addi r0, r4, 0x5810
/* 803A48B8  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_803A48BC:
/* 803A48BC  7C 03 03 78 */	mr r3, r0
/* 803A48C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803A48C4  4B CF 66 59 */	bl func_8009AF1C
/* 803A48C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A48CC  7C 08 03 A6 */	mtlr r0
/* 803A48D0  38 21 00 30 */	addi r1, r1, 0x30
/* 803A48D4  4E 80 00 20 */	blr 
