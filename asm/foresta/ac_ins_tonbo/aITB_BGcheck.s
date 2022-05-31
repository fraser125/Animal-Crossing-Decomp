lbl_805A0810:
/* 805A0810  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A0814  7C 08 02 A6 */	mflr r0
/* 805A0818  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A081C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A0820  4B AF A6 B5 */	bl func_8009AED4
/* 805A0824  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 805A0828  7C 7F 1B 78 */	mr r31, r3
/* 805A082C  7C 9D 23 78 */	mr r29, r4
/* 805A0830  38 60 00 00 */	li r3, 0
/* 805A0834  54 00 DF BD */	rlwinm. r0, r0, 0x1b, 0x1e, 0x1e
/* 805A0838  40 82 00 18 */	bne lbl_805A0850
/* 805A083C  88 9F 00 98 */	lbz r4, 0x98(r31)
/* 805A0840  54 80 F7 BD */	rlwinm. r0, r4, 0x1e, 0x1e, 0x1e
/* 805A0844  40 82 00 0C */	bne lbl_805A0850
/* 805A0848  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 805A084C  41 82 00 F0 */	beq lbl_805A093C
lbl_805A0850:
/* 805A0850  88 1F 00 99 */	lbz r0, 0x99(r31)
/* 805A0854  3B C0 00 00 */	li r30, 0
/* 805A0858  54 00 F7 7F */	rlwinm. r0, r0, 0x1e, 0x1d, 0x1f
/* 805A085C  41 82 00 48 */	beq lbl_805A08A4
/* 805A0860  38 60 00 00 */	li r3, 0
/* 805A0864  7C 09 03 A6 */	mtctr r0
/* 805A0868  40 81 00 3C */	ble lbl_805A08A4
lbl_805A086C:
/* 805A086C  38 03 00 AA */	addi r0, r3, 0xaa
/* 805A0870  7C 1F 02 AE */	lhax r0, r31, r0
/* 805A0874  2C 00 00 00 */	cmpwi r0, 0
/* 805A0878  40 82 00 24 */	bne lbl_805A089C
/* 805A087C  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805A0880  7C 7F 1A 14 */	add r3, r31, r3
/* 805A0884  A8 03 00 A8 */	lha r0, 0xa8(r3)
/* 805A0888  3C 64 00 01 */	addis r3, r4, 1
/* 805A088C  38 63 80 00 */	addi r3, r3, -32768
/* 805A0890  7C 03 00 50 */	subf r0, r3, r0
/* 805A0894  7C 1E 07 34 */	extsh r30, r0
/* 805A0898  48 00 00 0C */	b lbl_805A08A4
lbl_805A089C:
/* 805A089C  38 63 00 04 */	addi r3, r3, 4
/* 805A08A0  42 00 FF CC */	bdnz lbl_805A086C
lbl_805A08A4:
/* 805A08A4  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A08A8  7C 1E 00 50 */	subf r0, r30, r0
/* 805A08AC  7C 00 07 35 */	extsh. r0, r0
/* 805A08B0  41 80 00 2C */	blt lbl_805A08DC
/* 805A08B4  4B AB C4 41 */	bl fqrand
/* 805A08B8  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064A2DC@ha */
/* 805A08BC  C0 03 A2 DC */	lfs f0, lit_462@l(r3)  /* 0x8064A2DC@l */
/* 805A08C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A08C4  FC 00 00 1E */	fctiwz f0, f0
/* 805A08C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A08CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A08D0  7C 1E 02 14 */	add r0, r30, r0
/* 805A08D4  7C 00 07 34 */	extsh r0, r0
/* 805A08D8  48 00 00 28 */	b lbl_805A0900
lbl_805A08DC:
/* 805A08DC  4B AB C4 19 */	bl fqrand
/* 805A08E0  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064A2DC@ha */
/* 805A08E4  C0 03 A2 DC */	lfs f0, lit_462@l(r3)  /* 0x8064A2DC@l */
/* 805A08E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A08EC  FC 00 00 1E */	fctiwz f0, f0
/* 805A08F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A08F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A08F8  7C 00 F0 50 */	subf r0, r0, r30
/* 805A08FC  7C 00 07 34 */	extsh r0, r0
lbl_805A0900:
/* 805A0900  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A0904  80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 805A0908  38 03 00 01 */	addi r0, r3, 1
/* 805A090C  90 1F 02 2C */	stw r0, 0x22c(r31)
/* 805A0910  80 1F 02 2C */	lwz r0, 0x22c(r31)
/* 805A0914  2C 00 00 04 */	cmpwi r0, 4
/* 805A0918  41 80 00 1C */	blt lbl_805A0934
/* 805A091C  7F E3 FB 78 */	mr r3, r31
/* 805A0920  7F A5 EB 78 */	mr r5, r29
/* 805A0924  38 80 00 01 */	li r4, 1
/* 805A0928  48 00 12 65 */	bl aITB_setupAction
/* 805A092C  38 60 00 02 */	li r3, 2
/* 805A0930  48 00 00 14 */	b lbl_805A0944
lbl_805A0934:
/* 805A0934  38 60 00 01 */	li r3, 1
/* 805A0938  48 00 00 0C */	b lbl_805A0944
lbl_805A093C:
/* 805A093C  38 00 00 00 */	li r0, 0
/* 805A0940  90 1F 02 2C */	stw r0, 0x22c(r31)
lbl_805A0944:
/* 805A0944  39 61 00 30 */	addi r11, r1, 0x30
/* 805A0948  4B AF A5 D9 */	bl func_8009AF20
/* 805A094C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A0950  7C 08 03 A6 */	mtlr r0
/* 805A0954  38 21 00 30 */	addi r1, r1, 0x30
/* 805A0958  4E 80 00 20 */	blr 
