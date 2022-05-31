lbl_8059E744:
/* 8059E744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059E748  7C 08 02 A6 */	mflr r0
/* 8059E74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059E750  39 61 00 20 */	addi r11, r1, 0x20
/* 8059E754  4B AF C7 81 */	bl func_8009AED4
/* 8059E758  7C 7F 1B 78 */	mr r31, r3
/* 8059E75C  7C 9E 23 78 */	mr r30, r4
/* 8059E760  7F FD FB 78 */	mr r29, r31
/* 8059E764  4B FF FB 01 */	bl aIMN_check_cut_tree
/* 8059E768  2C 03 00 01 */	cmpwi r3, 1
/* 8059E76C  40 82 00 28 */	bne lbl_8059E794
/* 8059E770  3C 80 80 65 */	lis r4, lit_622@ha /* 0x8064A1C4@ha */
/* 8059E774  7F A3 EB 78 */	mr r3, r29
/* 8059E778  C0 04 A1 C4 */	lfs f0, lit_622@l(r4)  /* 0x8064A1C4@l */
/* 8059E77C  7F C5 F3 78 */	mr r5, r30
/* 8059E780  38 80 00 09 */	li r4, 9
/* 8059E784  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8059E788  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8059E78C  48 00 08 61 */	bl aIMN_setupAction
/* 8059E790  48 00 01 34 */	b lbl_8059E8C4
lbl_8059E794:
/* 8059E794  7F E3 FB 78 */	mr r3, r31
/* 8059E798  4B FF F8 05 */	bl aIMN_check_shake_tree
/* 8059E79C  2C 03 00 01 */	cmpwi r3, 1
/* 8059E7A0  40 82 00 14 */	bne lbl_8059E7B4
/* 8059E7A4  38 60 00 80 */	li r3, 0x80
/* 8059E7A8  38 00 FF 80 */	li r0, -128
/* 8059E7AC  90 7D 02 34 */	stw r3, 0x234(r29)
/* 8059E7B0  90 1D 02 40 */	stw r0, 0x240(r29)
lbl_8059E7B4:
/* 8059E7B4  80 7D 02 28 */	lwz r3, 0x228(r29)
/* 8059E7B8  38 03 FF FF */	addi r0, r3, -1
/* 8059E7BC  90 1D 02 28 */	stw r0, 0x228(r29)
/* 8059E7C0  80 1D 02 28 */	lwz r0, 0x228(r29)
/* 8059E7C4  2C 00 00 00 */	cmpwi r0, 0
/* 8059E7C8  41 81 00 40 */	bgt lbl_8059E808
/* 8059E7CC  80 1D 02 40 */	lwz r0, 0x240(r29)
/* 8059E7D0  2C 00 00 00 */	cmpwi r0, 0
/* 8059E7D4  40 82 00 28 */	bne lbl_8059E7FC
/* 8059E7D8  3C 80 80 65 */	lis r4, lit_622@ha /* 0x8064A1C4@ha */
/* 8059E7DC  7F A3 EB 78 */	mr r3, r29
/* 8059E7E0  C0 04 A1 C4 */	lfs f0, lit_622@l(r4)  /* 0x8064A1C4@l */
/* 8059E7E4  7F C5 F3 78 */	mr r5, r30
/* 8059E7E8  38 80 00 06 */	li r4, 6
/* 8059E7EC  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8059E7F0  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8059E7F4  48 00 07 F9 */	bl aIMN_setupAction
/* 8059E7F8  48 00 00 BC */	b lbl_8059E8B4
lbl_8059E7FC:
/* 8059E7FC  38 00 00 00 */	li r0, 0
/* 8059E800  90 1D 02 28 */	stw r0, 0x228(r29)
/* 8059E804  48 00 00 B0 */	b lbl_8059E8B4
lbl_8059E808:
/* 8059E808  A8 BF 00 24 */	lha r5, 0x24(r31)
/* 8059E80C  2C 05 00 07 */	cmpwi r5, 7
/* 8059E810  40 80 00 9C */	bge lbl_8059E8AC
/* 8059E814  3C 80 80 6C */	lis r4, scaleX_table@ha /* 0x806C3540@ha */
/* 8059E818  3C 60 80 65 */	lis r3, lit_623@ha /* 0x8064A1C8@ha */
/* 8059E81C  54 BD 10 3A */	slwi r29, r5, 2
/* 8059E820  C0 43 A1 C8 */	lfs f2, lit_623@l(r3)  /* 0x8064A1C8@l */
/* 8059E824  38 84 35 40 */	addi r4, r4, scaleX_table@l /* 0x806C3540@l */
/* 8059E828  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8059E82C  7C 24 EC 2E */	lfsx f1, r4, r29
/* 8059E830  4B E1 C4 39 */	bl chase_f
/* 8059E834  3C A0 80 6C */	lis r5, scaleY_table@ha /* 0x806C355C@ha */
/* 8059E838  3C 80 80 65 */	lis r4, lit_623@ha /* 0x8064A1C8@ha */
/* 8059E83C  38 A5 35 5C */	addi r5, r5, scaleY_table@l /* 0x806C355C@l */
/* 8059E840  7C 7E 1B 78 */	mr r30, r3
/* 8059E844  7C 25 EC 2E */	lfsx f1, r5, r29
/* 8059E848  38 7F 00 60 */	addi r3, r31, 0x60
/* 8059E84C  C0 44 A1 C8 */	lfs f2, lit_623@l(r4)  /* 0x8064A1C8@l */
/* 8059E850  4B E1 C4 19 */	bl chase_f
/* 8059E854  7F C0 18 38 */	and r0, r30, r3
/* 8059E858  2C 00 00 01 */	cmpwi r0, 1
/* 8059E85C  40 82 00 58 */	bne lbl_8059E8B4
/* 8059E860  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 8059E864  38 03 FF FF */	addi r0, r3, -1
/* 8059E868  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8059E86C  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 8059E870  2C 00 00 00 */	cmpwi r0, 0
/* 8059E874  40 80 00 40 */	bge lbl_8059E8B4
/* 8059E878  4B AB E4 7D */	bl fqrand
/* 8059E87C  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064A188@ha */
/* 8059E880  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064A1CC@ha */
/* 8059E884  C0 44 A1 88 */	lfs f2, lit_445@l(r4)  /* 0x8064A188@l */
/* 8059E888  C0 03 A1 CC */	lfs f0, lit_624@l(r3)  /* 0x8064A1CC@l */
/* 8059E88C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059E890  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059E894  FC 00 00 1E */	fctiwz f0, f0
/* 8059E898  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059E89C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059E8A0  38 03 01 33 */	addi r0, r3, 0x133
/* 8059E8A4  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8059E8A8  48 00 00 0C */	b lbl_8059E8B4
lbl_8059E8AC:
/* 8059E8AC  38 05 FF FF */	addi r0, r5, -1
/* 8059E8B0  B0 1F 00 24 */	sth r0, 0x24(r31)
lbl_8059E8B4:
/* 8059E8B4  7F E3 FB 78 */	mr r3, r31
/* 8059E8B8  4B FF F7 ED */	bl aIMN_calc_shake_angl
/* 8059E8BC  7F E3 FB 78 */	mr r3, r31
/* 8059E8C0  4B FF F9 49 */	bl aIMN_calc_twist_angl
lbl_8059E8C4:
/* 8059E8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8059E8C8  4B AF C6 59 */	bl func_8009AF20
/* 8059E8CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059E8D0  7C 08 03 A6 */	mtlr r0
/* 8059E8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8059E8D8  4E 80 00 20 */	blr 
