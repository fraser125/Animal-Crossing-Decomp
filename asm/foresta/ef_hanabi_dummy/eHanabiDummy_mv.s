lbl_8060E6BC:
/* 8060E6BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060E6C0  7C 08 02 A6 */	mflr r0
/* 8060E6C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060E6C8  39 61 00 70 */	addi r11, r1, 0x70
/* 8060E6CC  4B A8 C8 09 */	bl func_8009AED4
/* 8060E6D0  A8 03 00 00 */	lha r0, 0(r3)
/* 8060E6D4  7C 7D 1B 78 */	mr r29, r3
/* 8060E6D8  20 00 00 50 */	subfic r0, r0, 0x50
/* 8060E6DC  7C 1E 07 34 */	extsh r30, r0
/* 8060E6E0  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8060E6E4  40 82 01 44 */	bne lbl_8060E828
/* 8060E6E8  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8060E6EC  3C E0 80 6D */	lis r7, dummy_light@ha /* 0x806D2770@ha */
/* 8060E6F0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8060E6F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060E6F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060E6FC  3C C0 80 65 */	lis r6, lit_415@ha /* 0x8064C1B8@ha */
/* 8060E700  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8060E704  3F E3 00 02 */	addis r31, r3, 2
/* 8060E708  3C A0 80 65 */	lis r5, lit_416@ha /* 0x8064C1BC@ha */
/* 8060E70C  3C 60 80 65 */	lis r3, lit_417@ha /* 0x8064C1C0@ha */
/* 8060E710  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060E714  39 46 C1 B8 */	addi r10, r6, lit_415@l /* 0x8064C1B8@l */
/* 8060E718  39 25 C1 BC */	addi r9, r5, lit_416@l /* 0x8064C1BC@l */
/* 8060E71C  39 03 C1 C0 */	addi r8, r3, lit_417@l /* 0x8064C1C0@l */
/* 8060E720  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8060E724  39 67 27 70 */	addi r11, r7, dummy_light@l /* 0x806D2770@l */
/* 8060E728  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060E72C  7C 86 23 78 */	mr r6, r4
/* 8060E730  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060E734  38 61 00 10 */	addi r3, r1, 0x10
/* 8060E738  38 81 00 0C */	addi r4, r1, 0xc
/* 8060E73C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8060E740  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 8060E744  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8060E748  54 00 10 3A */	slwi r0, r0, 2
/* 8060E74C  C0 49 00 00 */	lfs f2, 0(r9)
/* 8060E750  7C 0B 00 2E */	lwzx r0, r11, r0
/* 8060E754  C0 68 00 00 */	lfs f3, 0(r8)
/* 8060E758  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060E75C  81 87 00 34 */	lwz r12, 0x34(r7)
/* 8060E760  7D 89 03 A6 */	mtctr r12
/* 8060E764  4E 80 04 21 */	bctrl 
/* 8060E768  A8 1D 00 06 */	lha r0, 6(r29)
/* 8060E76C  2C 00 00 00 */	cmpwi r0, 0
/* 8060E770  41 82 00 90 */	beq lbl_8060E800
/* 8060E774  88 C1 00 10 */	lbz r6, 0x10(r1)
/* 8060E778  3C 80 43 30 */	lis r4, 0x4330
/* 8060E77C  88 61 00 11 */	lbz r3, 0x11(r1)
/* 8060E780  3C A0 80 65 */	lis r5, lit_420@ha /* 0x8064C1CC@ha */
/* 8060E784  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8060E788  3C C0 80 65 */	lis r6, lit_415@ha /* 0x8064C1B8@ha */
/* 8060E78C  88 01 00 12 */	lbz r0, 0x12(r1)
/* 8060E790  90 81 00 30 */	stw r4, 0x30(r1)
/* 8060E794  C8 65 C1 CC */	lfd f3, lit_420@l(r5)  /* 0x8064C1CC@l */
/* 8060E798  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8060E79C  90 61 00 44 */	stw r3, 0x44(r1)
/* 8060E7A0  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060E7A4  C0 86 C1 B8 */	lfs f4, lit_415@l(r6)  /* 0x8064C1B8@l */
/* 8060E7A8  90 81 00 40 */	stw r4, 0x40(r1)
/* 8060E7AC  EC 44 00 72 */	fmuls f2, f4, f1
/* 8060E7B0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8060E7B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8060E7B8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060E7BC  90 81 00 50 */	stw r4, 0x50(r1)
/* 8060E7C0  FC 40 10 1E */	fctiwz f2, f2
/* 8060E7C4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8060E7C8  EC 24 00 72 */	fmuls f1, f4, f1
/* 8060E7CC  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8060E7D0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8060E7D4  FC 20 08 1E */	fctiwz f1, f1
/* 8060E7D8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8060E7DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8060E7E0  98 01 00 10 */	stb r0, 0x10(r1)
/* 8060E7E4  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8060E7E8  FC 00 00 1E */	fctiwz f0, f0
/* 8060E7EC  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8060E7F0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8060E7F4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8060E7F8  98 61 00 11 */	stb r3, 0x11(r1)
/* 8060E7FC  98 01 00 12 */	stb r0, 0x12(r1)
lbl_8060E800:
/* 8060E800  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8060E804  38 61 00 08 */	addi r3, r1, 8
/* 8060E808  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060E80C  38 80 00 14 */	li r4, 0x14
/* 8060E810  90 01 00 08 */	stw r0, 8(r1)
/* 8060E814  38 A0 00 32 */	li r5, 0x32
/* 8060E818  38 C0 00 01 */	li r6, 1
/* 8060E81C  81 87 00 30 */	lwz r12, 0x30(r7)
/* 8060E820  7D 89 03 A6 */	mtctr r12
/* 8060E824  4E 80 04 21 */	bctrl 
lbl_8060E828:
/* 8060E828  2C 1E 00 48 */	cmpwi r30, 0x48
/* 8060E82C  40 82 00 88 */	bne lbl_8060E8B4
/* 8060E830  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8060E834  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064C1C4@ha */
/* 8060E838  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8060E83C  C0 03 C1 C4 */	lfs f0, lit_418@l(r3)  /* 0x8064C1C4@l */
/* 8060E840  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060E844  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8060E848  90 81 00 20 */	stw r4, 0x20(r1)
/* 8060E84C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060E850  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8060E854  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060E858  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060E85C  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 8060E860  2C 00 00 02 */	cmpwi r0, 2
/* 8060E864  41 82 00 2C */	beq lbl_8060E890
/* 8060E868  40 80 00 10 */	bge lbl_8060E878
/* 8060E86C  2C 00 00 00 */	cmpwi r0, 0
/* 8060E870  40 80 00 18 */	bge lbl_8060E888
/* 8060E874  48 00 00 34 */	b lbl_8060E8A8
lbl_8060E878:
/* 8060E878  2C 00 00 05 */	cmpwi r0, 5
/* 8060E87C  41 82 00 24 */	beq lbl_8060E8A0
/* 8060E880  40 80 00 28 */	bge lbl_8060E8A8
/* 8060E884  48 00 00 14 */	b lbl_8060E898
lbl_8060E888:
/* 8060E888  38 60 21 0F */	li r3, 0x210f
/* 8060E88C  48 00 00 20 */	b lbl_8060E8AC
lbl_8060E890:
/* 8060E890  38 60 21 10 */	li r3, 0x2110
/* 8060E894  48 00 00 18 */	b lbl_8060E8AC
lbl_8060E898:
/* 8060E898  38 60 21 11 */	li r3, 0x2111
/* 8060E89C  48 00 00 10 */	b lbl_8060E8AC
lbl_8060E8A0:
/* 8060E8A0  38 60 21 12 */	li r3, 0x2112
/* 8060E8A4  48 00 00 08 */	b lbl_8060E8AC
lbl_8060E8A8:
/* 8060E8A8  38 60 21 0F */	li r3, 0x210f
lbl_8060E8AC:
/* 8060E8AC  38 81 00 20 */	addi r4, r1, 0x20
/* 8060E8B0  48 01 F6 F9 */	bl sAdo_OngenTrgStart
lbl_8060E8B4:
/* 8060E8B4  39 61 00 70 */	addi r11, r1, 0x70
/* 8060E8B8  4B A8 C6 69 */	bl func_8009AF20
/* 8060E8BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060E8C0  7C 08 03 A6 */	mtlr r0
/* 8060E8C4  38 21 00 70 */	addi r1, r1, 0x70
/* 8060E8C8  4E 80 00 20 */	blr 
