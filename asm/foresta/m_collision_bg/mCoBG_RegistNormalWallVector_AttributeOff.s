lbl_8038C03C:
/* 8038C03C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8038C040  7C 08 02 A6 */	mflr r0
/* 8038C044  90 01 00 74 */	stw r0, 0x74(r1)
/* 8038C048  80 03 00 00 */	lwz r0, 0(r3)
/* 8038C04C  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038C050  40 80 01 D4 */	bge lbl_8038C224
/* 8038C054  7D 00 07 35 */	extsh. r0, r8
/* 8038C058  41 82 01 C8 */	beq lbl_8038C220
/* 8038C05C  89 04 00 2C */	lbz r8, 0x2c(r4)
/* 8038C060  28 08 00 17 */	cmplwi r8, 0x17
/* 8038C064  40 82 00 C8 */	bne lbl_8038C12C
/* 8038C068  88 05 00 2C */	lbz r0, 0x2c(r5)
/* 8038C06C  28 00 00 1B */	cmplwi r0, 0x1b
/* 8038C070  41 80 00 BC */	blt lbl_8038C12C
/* 8038C074  28 00 00 23 */	cmplwi r0, 0x23
/* 8038C078  41 81 00 B4 */	bgt lbl_8038C12C
/* 8038C07C  38 00 00 06 */	li r0, 6
/* 8038C080  39 21 00 34 */	addi r9, r1, 0x34
/* 8038C084  39 05 FF FC */	addi r8, r5, -4
/* 8038C088  7C 09 03 A6 */	mtctr r0
lbl_8038C08C:
/* 8038C08C  80 A8 00 04 */	lwz r5, 4(r8)
/* 8038C090  84 08 00 08 */	lwzu r0, 8(r8)
/* 8038C094  90 A9 00 04 */	stw r5, 4(r9)
/* 8038C098  94 09 00 08 */	stwu r0, 8(r9)
/* 8038C09C  42 00 FF F0 */	bdnz lbl_8038C08C
/* 8038C0A0  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8038C0A4  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 8038C0A8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038C0AC  40 80 00 0C */	bge lbl_8038C0B8
/* 8038C0B0  FC 00 10 90 */	fmr f0, f2
/* 8038C0B4  48 00 00 08 */	b lbl_8038C0BC
lbl_8038C0B8:
/* 8038C0B8  FC 00 18 90 */	fmr f0, f3
lbl_8038C0BC:
/* 8038C0BC  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 8038C0C0  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 8038C0C4  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8038C0C8  40 80 00 0C */	bge lbl_8038C0D4
/* 8038C0CC  FC 20 20 90 */	fmr f1, f4
/* 8038C0D0  48 00 00 08 */	b lbl_8038C0D8
lbl_8038C0D4:
/* 8038C0D4  FC 20 28 90 */	fmr f1, f5
lbl_8038C0D8:
/* 8038C0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038C0DC  40 80 00 18 */	bge lbl_8038C0F4
/* 8038C0E0  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8038C0E4  40 80 00 08 */	bge lbl_8038C0EC
/* 8038C0E8  48 00 00 20 */	b lbl_8038C108
lbl_8038C0EC:
/* 8038C0EC  FC 80 28 90 */	fmr f4, f5
/* 8038C0F0  48 00 00 18 */	b lbl_8038C108
lbl_8038C0F4:
/* 8038C0F4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038C0F8  40 80 00 0C */	bge lbl_8038C104
/* 8038C0FC  FC 80 10 90 */	fmr f4, f2
/* 8038C100  48 00 00 08 */	b lbl_8038C108
lbl_8038C104:
/* 8038C104  FC 80 18 90 */	fmr f4, f3
lbl_8038C108:
/* 8038C108  38 00 00 00 */	li r0, 0
/* 8038C10C  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8038C110  38 A1 00 38 */	addi r5, r1, 0x38
/* 8038C114  90 01 00 60 */	stw r0, 0x60(r1)
/* 8038C118  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8038C11C  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8038C120  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8038C124  4B FF FE D9 */	bl mCoBG_UnitInf2NormalVector
/* 8038C128  48 00 00 FC */	b lbl_8038C224
lbl_8038C12C:
/* 8038C12C  88 05 00 2C */	lbz r0, 0x2c(r5)
/* 8038C130  28 00 00 17 */	cmplwi r0, 0x17
/* 8038C134  40 82 00 C4 */	bne lbl_8038C1F8
/* 8038C138  28 08 00 1B */	cmplwi r8, 0x1b
/* 8038C13C  41 80 00 BC */	blt lbl_8038C1F8
/* 8038C140  28 08 00 23 */	cmplwi r8, 0x23
/* 8038C144  41 81 00 B4 */	bgt lbl_8038C1F8
/* 8038C148  38 00 00 06 */	li r0, 6
/* 8038C14C  39 21 00 04 */	addi r9, r1, 4
/* 8038C150  39 04 FF FC */	addi r8, r4, -4
/* 8038C154  7C 09 03 A6 */	mtctr r0
lbl_8038C158:
/* 8038C158  80 88 00 04 */	lwz r4, 4(r8)
/* 8038C15C  84 08 00 08 */	lwzu r0, 8(r8)
/* 8038C160  90 89 00 04 */	stw r4, 4(r9)
/* 8038C164  94 09 00 08 */	stwu r0, 8(r9)
/* 8038C168  42 00 FF F0 */	bdnz lbl_8038C158
/* 8038C16C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8038C170  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 8038C174  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038C178  40 80 00 0C */	bge lbl_8038C184
/* 8038C17C  FC 00 10 90 */	fmr f0, f2
/* 8038C180  48 00 00 08 */	b lbl_8038C188
lbl_8038C184:
/* 8038C184  FC 00 18 90 */	fmr f0, f3
lbl_8038C188:
/* 8038C188  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8038C18C  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8038C190  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8038C194  40 80 00 0C */	bge lbl_8038C1A0
/* 8038C198  FC 20 20 90 */	fmr f1, f4
/* 8038C19C  48 00 00 08 */	b lbl_8038C1A4
lbl_8038C1A0:
/* 8038C1A0  FC 20 28 90 */	fmr f1, f5
lbl_8038C1A4:
/* 8038C1A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038C1A8  40 80 00 18 */	bge lbl_8038C1C0
/* 8038C1AC  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8038C1B0  40 80 00 08 */	bge lbl_8038C1B8
/* 8038C1B4  48 00 00 20 */	b lbl_8038C1D4
lbl_8038C1B8:
/* 8038C1B8  FC 80 28 90 */	fmr f4, f5
/* 8038C1BC  48 00 00 18 */	b lbl_8038C1D4
lbl_8038C1C0:
/* 8038C1C0  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8038C1C4  40 80 00 0C */	bge lbl_8038C1D0
/* 8038C1C8  FC 80 10 90 */	fmr f4, f2
/* 8038C1CC  48 00 00 08 */	b lbl_8038C1D4
lbl_8038C1D0:
/* 8038C1D0  FC 80 18 90 */	fmr f4, f3
lbl_8038C1D4:
/* 8038C1D4  38 00 00 00 */	li r0, 0
/* 8038C1D8  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8038C1DC  38 81 00 08 */	addi r4, r1, 8
/* 8038C1E0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8038C1E4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8038C1E8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8038C1EC  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8038C1F0  4B FF FE 0D */	bl mCoBG_UnitInf2NormalVector
/* 8038C1F4  48 00 00 30 */	b lbl_8038C224
lbl_8038C1F8:
/* 8038C1F8  28 08 00 1B */	cmplwi r8, 0x1b
/* 8038C1FC  41 80 00 0C */	blt lbl_8038C208
/* 8038C200  28 08 00 23 */	cmplwi r8, 0x23
/* 8038C204  40 81 00 20 */	ble lbl_8038C224
lbl_8038C208:
/* 8038C208  28 00 00 1B */	cmplwi r0, 0x1b
/* 8038C20C  41 80 00 0C */	blt lbl_8038C218
/* 8038C210  28 00 00 23 */	cmplwi r0, 0x23
/* 8038C214  40 81 00 10 */	ble lbl_8038C224
lbl_8038C218:
/* 8038C218  4B FF FD E5 */	bl mCoBG_UnitInf2NormalVector
/* 8038C21C  48 00 00 08 */	b lbl_8038C224
lbl_8038C220:
/* 8038C220  4B FF FD DD */	bl mCoBG_UnitInf2NormalVector
lbl_8038C224:
/* 8038C224  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8038C228  7C 08 03 A6 */	mtlr r0
/* 8038C22C  38 21 00 70 */	addi r1, r1, 0x70
/* 8038C230  4E 80 00 20 */	blr 
