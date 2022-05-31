lbl_805C60E8:
/* 805C60E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C60EC  7C 08 02 A6 */	mflr r0
/* 805C60F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C60F4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805C60F8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805C60FC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805C6100  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805C6104  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805C6108  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805C610C  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6110  4B AD 4D C1 */	bl func_8009AED0
/* 805C6114  3C E0 80 65 */	lis r7, lit_669@ha /* 0x8064AE24@ha */
/* 805C6118  FF A0 08 90 */	fmr f29, f1
/* 805C611C  3C C0 80 65 */	lis r6, lit_646@ha /* 0x8064AE0C@ha */
/* 805C6120  C0 27 AE 24 */	lfs f1, lit_669@l(r7)  /* 0x8064AE24@l */
/* 805C6124  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805C6128  FF C0 10 90 */	fmr f30, f2
/* 805C612C  C0 06 AE 0C */	lfs f0, lit_646@l(r6)  /* 0x8064AE0C@l */
/* 805C6130  80 E8 09 90 */	lwz r7, 0x990(r8)
/* 805C6134  EF E1 E8 2A */	fadds f31, f1, f29
/* 805C6138  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805C613C  3C C0 80 6D */	lis r6, letter_color@ha /* 0x806C8360@ha */
/* 805C6140  88 07 00 39 */	lbz r0, 0x39(r7)
/* 805C6144  7C 7E 1B 78 */	mr r30, r3
/* 805C6148  FC 20 F8 90 */	fmr f1, f31
/* 805C614C  54 07 10 3A */	slwi r7, r0, 2
/* 805C6150  38 06 83 60 */	addi r0, r6, letter_color@l /* 0x806C8360@l */
/* 805C6154  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805C6158  7F A0 3A 14 */	add r29, r0, r7
/* 805C615C  7C 9F 23 78 */	mr r31, r4
/* 805C6160  7C BC 2B 78 */	mr r28, r5
/* 805C6164  7F A6 EB 78 */	mr r6, r29
/* 805C6168  4B FF FC 45 */	bl mBD_set_writing_header
/* 805C616C  3C 60 80 65 */	lis r3, lit_769@ha /* 0x8064AE34@ha */
/* 805C6170  3C 80 80 65 */	lis r4, lit_719@ha /* 0x8064AE28@ha */
/* 805C6174  38 A3 AE 34 */	addi r5, r3, lit_769@l /* 0x8064AE34@l */
/* 805C6178  C0 44 AE 28 */	lfs f2, lit_719@l(r4)  /* 0x8064AE28@l */
/* 805C617C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C6180  3C 60 80 65 */	lis r3, lit_720@ha /* 0x8064AE2C@ha */
/* 805C6184  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 805C6188  EC 5F 10 28 */	fsubs f2, f31, f2
/* 805C618C  FC 20 F8 90 */	fmr f1, f31
/* 805C6190  7F 84 E3 78 */	mr r4, r28
/* 805C6194  EC 63 00 2A */	fadds f3, f3, f0
/* 805C6198  C0 03 AE 2C */	lfs f0, lit_720@l(r3)  /* 0x8064AE2C@l */
/* 805C619C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805C61A0  7F C3 F3 78 */	mr r3, r30
/* 805C61A4  EC 00 18 28 */	fsubs f0, f0, f3
/* 805C61A8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 805C61AC  7F E5 FB 78 */	mr r5, r31
/* 805C61B0  7F A9 EB 78 */	mr r9, r29
/* 805C61B4  38 C1 00 10 */	addi r6, r1, 0x10
/* 805C61B8  38 E1 00 0C */	addi r7, r1, 0xc
/* 805C61BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C61C0  39 01 00 08 */	addi r8, r1, 8
/* 805C61C4  4B FF F8 F9 */	bl mBD_set_writing_body
/* 805C61C8  3C 60 80 65 */	lis r3, lit_666@ha /* 0x8064AE18@ha */
/* 805C61CC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805C61D0  C0 03 AE 18 */	lfs f0, lit_666@l(r3)  /* 0x8064AE18@l */
/* 805C61D4  FC 20 F8 90 */	fmr f1, f31
/* 805C61D8  7F C3 F3 78 */	mr r3, r30
/* 805C61DC  7F E4 FB 78 */	mr r4, r31
/* 805C61E0  EC 42 00 2A */	fadds f2, f2, f0
/* 805C61E4  7F A5 EB 78 */	mr r5, r29
/* 805C61E8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805C61EC  4B FF F7 B1 */	bl mBD_set_writing_footer
/* 805C61F0  80 1C 00 04 */	lwz r0, 4(r28)
/* 805C61F4  2C 00 00 01 */	cmpwi r0, 1
/* 805C61F8  40 82 00 4C */	bne lbl_805C6244
/* 805C61FC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805C6200  80 03 09 8C */	lwz r0, 0x98c(r3)
/* 805C6204  28 00 00 00 */	cmplwi r0, 0
/* 805C6208  41 82 00 3C */	beq lbl_805C6244
/* 805C620C  FC 20 E8 90 */	fmr f1, f29
/* 805C6210  7F C3 F3 78 */	mr r3, r30
/* 805C6214  FC 40 F0 90 */	fmr f2, f30
/* 805C6218  7F E4 FB 78 */	mr r4, r31
/* 805C621C  4B FF F5 59 */	bl mBD_set_cursol
/* 805C6220  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805C6224  7F C3 F3 78 */	mr r3, r30
/* 805C6228  7F E4 FB 78 */	mr r4, r31
/* 805C622C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805C6230  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805C6234  C0 41 00 08 */	lfs f2, 8(r1)
/* 805C6238  81 85 00 2C */	lwz r12, 0x2c(r5)
/* 805C623C  7D 89 03 A6 */	mtctr r12
/* 805C6240  4E 80 04 21 */	bctrl 
lbl_805C6244:
/* 805C6244  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805C6248  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805C624C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805C6250  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805C6254  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805C6258  39 61 00 30 */	addi r11, r1, 0x30
/* 805C625C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805C6260  4B AD 4C BD */	bl func_8009AF1C
/* 805C6264  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C6268  7C 08 03 A6 */	mtlr r0
/* 805C626C  38 21 00 60 */	addi r1, r1, 0x60
/* 805C6270  4E 80 00 20 */	blr 
