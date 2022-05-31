lbl_8042F714:
/* 8042F714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042F718  7C 08 02 A6 */	mflr r0
/* 8042F71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042F720  39 61 00 20 */	addi r11, r1, 0x20
/* 8042F724  4B C6 B7 A5 */	bl func_8009AEC8
/* 8042F728  7C BC 2B 78 */	mr r28, r5
/* 8042F72C  7C 7A 1B 78 */	mr r26, r3
/* 8042F730  3C 60 80 68 */	lis r3, data_80684E58@ha /* 0x80684E58@ha */
/* 8042F734  38 00 00 06 */	li r0, 6
/* 8042F738  3B E3 4E 58 */	addi r31, r3, data_80684E58@l /* 0x80684E58@l */
/* 8042F73C  7C 9B 23 78 */	mr r27, r4
/* 8042F740  1F DC 00 34 */	mulli r30, r28, 0x34
/* 8042F744  7C DD 33 78 */	mr r29, r6
/* 8042F748  38 7F 03 A4 */	addi r3, r31, 0x3a4
/* 8042F74C  93 9A 05 9C */	stw r28, 0x59c(r26)
/* 8042F750  38 BA FF FC */	addi r5, r26, -4
/* 8042F754  7C 83 F2 14 */	add r4, r3, r30
/* 8042F758  7C 09 03 A6 */	mtctr r0
/* 8042F75C  38 84 FF FC */	addi r4, r4, -4
lbl_8042F760:
/* 8042F760  80 64 00 04 */	lwz r3, 4(r4)
/* 8042F764  84 04 00 08 */	lwzu r0, 8(r4)
/* 8042F768  90 65 00 04 */	stw r3, 4(r5)
/* 8042F76C  94 05 00 08 */	stwu r0, 8(r5)
/* 8042F770  42 00 FF F0 */	bdnz lbl_8042F760
/* 8042F774  80 84 00 04 */	lwz r4, 4(r4)
/* 8042F778  57 80 08 3C */	slwi r0, r28, 1
/* 8042F77C  38 7F 0B C4 */	addi r3, r31, 0xbc4
/* 8042F780  90 85 00 04 */	stw r4, 4(r5)
/* 8042F784  7C 03 02 AE */	lhax r0, r3, r0
/* 8042F788  B0 1A 06 30 */	sth r0, 0x630(r26)
/* 8042F78C  A8 7A 06 30 */	lha r3, 0x630(r26)
/* 8042F790  7C 60 07 35 */	extsh. r0, r3
/* 8042F794  41 80 00 2C */	blt lbl_8042F7C0
/* 8042F798  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8042F79C  38 1F 00 24 */	addi r0, r31, 0x24
/* 8042F7A0  7C 80 1A 14 */	add r4, r0, r3
/* 8042F7A4  80 64 00 00 */	lwz r3, 0(r4)
/* 8042F7A8  80 04 00 04 */	lwz r0, 4(r4)
/* 8042F7AC  90 7A 05 A0 */	stw r3, 0x5a0(r26)
/* 8042F7B0  90 1A 05 A4 */	stw r0, 0x5a4(r26)
/* 8042F7B4  80 04 00 08 */	lwz r0, 8(r4)
/* 8042F7B8  90 1A 05 A8 */	stw r0, 0x5a8(r26)
/* 8042F7BC  48 00 00 24 */	b lbl_8042F7E0
lbl_8042F7C0:
/* 8042F7C0  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 8042F7C4  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 8042F7C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8042F7CC  80 04 00 04 */	lwz r0, 4(r4)
/* 8042F7D0  90 7A 05 A0 */	stw r3, 0x5a0(r26)
/* 8042F7D4  90 1A 05 A4 */	stw r0, 0x5a4(r26)
/* 8042F7D8  80 04 00 08 */	lwz r0, 8(r4)
/* 8042F7DC  90 1A 05 A8 */	stw r0, 0x5a8(r26)
lbl_8042F7E0:
/* 8042F7E0  4B C2 D5 4D */	bl fqrand2
/* 8042F7E4  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8042F7E8  38 1F 03 A4 */	addi r0, r31, 0x3a4
/* 8042F7EC  C0 43 42 B0 */	lfs f2, lit_697@l(r3)  /* 0x806442B0@l */
/* 8042F7F0  7C 60 F2 14 */	add r3, r0, r30
/* 8042F7F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8042F7F8  2C 1D 00 01 */	cmpwi r29, 1
/* 8042F7FC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042F800  EC 00 08 2A */	fadds f0, f0, f1
/* 8042F804  D0 1A 05 A4 */	stfs f0, 0x5a4(r26)
/* 8042F808  40 82 00 3C */	bne lbl_8042F844
/* 8042F80C  4B C2 D5 21 */	bl fqrand2
/* 8042F810  3C 60 80 64 */	lis r3, lit_4775@ha /* 0x806443FC@ha */
/* 8042F814  C0 1A 05 A0 */	lfs f0, 0x5a0(r26)
/* 8042F818  C0 43 43 FC */	lfs f2, lit_4775@l(r3)  /* 0x806443FC@l */
/* 8042F81C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042F820  EC 00 08 2A */	fadds f0, f0, f1
/* 8042F824  D0 1A 05 A0 */	stfs f0, 0x5a0(r26)
/* 8042F828  4B C2 D5 05 */	bl fqrand2
/* 8042F82C  3C 60 80 64 */	lis r3, lit_4775@ha /* 0x806443FC@ha */
/* 8042F830  C0 1A 05 A8 */	lfs f0, 0x5a8(r26)
/* 8042F834  C0 43 43 FC */	lfs f2, lit_4775@l(r3)  /* 0x806443FC@l */
/* 8042F838  EC 22 00 72 */	fmuls f1, f2, f1
/* 8042F83C  EC 00 08 2A */	fadds f0, f0, f1
/* 8042F840  D0 1A 05 A8 */	stfs f0, 0x5a8(r26)
lbl_8042F844:
/* 8042F844  3C 60 80 43 */	lis r3, mfish_normal_process@ha /* 0x80432510@ha */
/* 8042F848  57 80 10 3A */	slwi r0, r28, 2
/* 8042F84C  38 63 25 10 */	addi r3, r3, mfish_normal_process@l /* 0x80432510@l */
/* 8042F850  38 BF 0C 14 */	addi r5, r31, 0xc14
/* 8042F854  90 7A 00 34 */	stw r3, 0x34(r26)
/* 8042F858  7F 43 D3 78 */	mr r3, r26
/* 8042F85C  7F 64 DB 78 */	mr r4, r27
/* 8042F860  7D 85 00 2E */	lwzx r12, r5, r0
/* 8042F864  7D 89 03 A6 */	mtctr r12
/* 8042F868  4E 80 04 21 */	bctrl 
/* 8042F86C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042F870  4B C6 B6 A5 */	bl func_8009AF14
/* 8042F874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042F878  7C 08 03 A6 */	mtlr r0
/* 8042F87C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042F880  4E 80 00 20 */	blr 
