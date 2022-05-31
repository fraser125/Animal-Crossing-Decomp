lbl_805DA2C8:
/* 805DA2C8  88 C4 00 00 */	lbz r6, 0(r4)
/* 805DA2CC  81 25 00 2C */	lwz r9, 0x2c(r5)
/* 805DA2D0  28 06 00 00 */	cmplwi r6, 0
/* 805DA2D4  40 82 00 10 */	bne lbl_805DA2E4
/* 805DA2D8  88 04 00 02 */	lbz r0, 2(r4)
/* 805DA2DC  28 00 00 01 */	cmplwi r0, 1
/* 805DA2E0  4D 82 00 20 */	beqlr 
lbl_805DA2E4:
/* 805DA2E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805DA2E8  28 00 00 03 */	cmplwi r0, 3
/* 805DA2EC  40 82 00 10 */	bne lbl_805DA2FC
/* 805DA2F0  39 66 FF FF */	addi r11, r6, -1
/* 805DA2F4  39 80 00 01 */	li r12, 1
/* 805DA2F8  48 00 00 1C */	b lbl_805DA314
lbl_805DA2FC:
/* 805DA2FC  28 00 00 04 */	cmplwi r0, 4
/* 805DA300  4C 82 00 20 */	bnelr 
/* 805DA304  39 66 00 01 */	addi r11, r6, 1
/* 805DA308  39 80 00 00 */	li r12, 0
/* 805DA30C  48 00 00 08 */	b lbl_805DA314
/* 805DA310  4E 80 00 20 */	blr 
lbl_805DA314:
/* 805DA314  2C 0B 00 00 */	cmpwi r11, 0
/* 805DA318  4D 80 00 20 */	bltlr 
/* 805DA31C  2C 0B 00 03 */	cmpwi r11, 3
/* 805DA320  41 80 00 08 */	blt lbl_805DA328
/* 805DA324  4E 80 00 20 */	blr 
lbl_805DA328:
/* 805DA328  39 00 00 01 */	li r8, 1
/* 805DA32C  3C C0 80 6D */	lis r6, letter_table_col@ha /* 0x806CCD58@ha */
/* 805DA330  99 03 00 15 */	stb r8, 0x15(r3)
/* 805DA334  3C A0 80 6D */	lis r5, letter_table_width@ha /* 0x806CCD60@ha */
/* 805DA338  38 E0 00 00 */	li r7, 0
/* 805DA33C  55 6A 08 3C */	slwi r10, r11, 1
/* 805DA340  99 64 00 00 */	stb r11, 0(r4)
/* 805DA344  38 C6 CD 58 */	addi r6, r6, letter_table_col@l /* 0x806CCD58@l */
/* 805DA348  38 A5 CD 60 */	addi r5, r5, letter_table_width@l /* 0x806CCD60@l */
/* 805DA34C  2C 0B 00 01 */	cmpwi r11, 1
/* 805DA350  98 E4 00 02 */	stb r7, 2(r4)
/* 805DA354  7C 06 52 AE */	lhax r0, r6, r10
/* 805DA358  B0 03 00 18 */	sth r0, 0x18(r3)
/* 805DA35C  7C 05 52 AE */	lhax r0, r5, r10
/* 805DA360  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 805DA364  7C 05 52 AE */	lhax r0, r5, r10
/* 805DA368  90 09 03 68 */	stw r0, 0x368(r9)
/* 805DA36C  40 82 00 30 */	bne lbl_805DA39C
/* 805DA370  38 00 00 06 */	li r0, 6
/* 805DA374  2C 0C 00 01 */	cmpwi r12, 1
/* 805DA378  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 805DA37C  38 04 00 52 */	addi r0, r4, 0x52
/* 805DA380  90 03 00 28 */	stw r0, 0x28(r3)
/* 805DA384  40 82 00 10 */	bne lbl_805DA394
/* 805DA388  38 00 FF FF */	li r0, -1
/* 805DA38C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 805DA390  48 00 00 30 */	b lbl_805DA3C0
lbl_805DA394:
/* 805DA394  B0 E3 00 16 */	sth r7, 0x16(r3)
/* 805DA398  48 00 00 28 */	b lbl_805DA3C0
lbl_805DA39C:
/* 805DA39C  B1 03 00 1A */	sth r8, 0x1a(r3)
/* 805DA3A0  2C 0B 00 00 */	cmpwi r11, 0
/* 805DA3A4  B0 E3 00 16 */	sth r7, 0x16(r3)
/* 805DA3A8  40 82 00 10 */	bne lbl_805DA3B8
/* 805DA3AC  38 04 00 3A */	addi r0, r4, 0x3a
/* 805DA3B0  90 03 00 28 */	stw r0, 0x28(r3)
/* 805DA3B4  48 00 00 0C */	b lbl_805DA3C0
lbl_805DA3B8:
/* 805DA3B8  38 04 01 12 */	addi r0, r4, 0x112
/* 805DA3BC  90 03 00 28 */	stw r0, 0x28(r3)
lbl_805DA3C0:
/* 805DA3C0  7C 84 5A 14 */	add r4, r4, r11
/* 805DA3C4  88 04 00 05 */	lbz r0, 5(r4)
/* 805DA3C8  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 805DA3CC  A8 03 00 16 */	lha r0, 0x16(r3)
/* 805DA3D0  2C 00 FF FF */	cmpwi r0, -1
/* 805DA3D4  4C 82 00 20 */	bnelr 
/* 805DA3D8  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 805DA3DC  B0 03 00 16 */	sth r0, 0x16(r3)
/* 805DA3E0  4E 80 00 20 */	blr 
