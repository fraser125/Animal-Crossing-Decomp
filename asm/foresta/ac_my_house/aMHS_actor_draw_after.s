lbl_805B5EB0:
/* 805B5EB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B5EB4  7C 08 02 A6 */	mflr r0
/* 805B5EB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B5EBC  39 61 00 40 */	addi r11, r1, 0x40
/* 805B5EC0  4B AE 4F FD */	bl func_8009AEBC
/* 805B5EC4  2C 05 00 0C */	cmpwi r5, 0xc
/* 805B5EC8  83 C3 00 00 */	lwz r30, 0(r3)
/* 805B5ECC  7D 1B 43 78 */	mr r27, r8
/* 805B5ED0  40 82 01 34 */	bne lbl_805B6004
/* 805B5ED4  7F C3 F3 78 */	mr r3, r30
/* 805B5ED8  4B E5 74 FD */	bl _Matrix_to_Mtx_new
/* 805B5EDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B5EE0  41 82 01 24 */	beq lbl_805B6004
/* 805B5EE4  A8 1B 00 34 */	lha r0, 0x34(r27)
/* 805B5EE8  2C 00 3F FF */	cmpwi r0, 0x3fff
/* 805B5EEC  40 82 00 1C */	bne lbl_805B5F08
/* 805B5EF0  3B 20 00 78 */	li r25, 0x78
/* 805B5EF4  3B 00 00 FF */	li r24, 0xff
/* 805B5EF8  3A E0 00 FF */	li r23, 0xff
/* 805B5EFC  3B A0 00 96 */	li r29, 0x96
/* 805B5F00  3B 80 00 FF */	li r28, 0xff
/* 805B5F04  48 00 00 7C */	b lbl_805B5F80
lbl_805B5F08:
/* 805B5F08  2C 00 00 00 */	cmpwi r0, 0
/* 805B5F0C  40 82 00 1C */	bne lbl_805B5F28
/* 805B5F10  3B 20 00 00 */	li r25, 0
/* 805B5F14  3B 00 00 00 */	li r24, 0
/* 805B5F18  3A E0 00 00 */	li r23, 0
/* 805B5F1C  3B A0 00 00 */	li r29, 0
/* 805B5F20  3B 80 00 FF */	li r28, 0xff
/* 805B5F24  48 00 00 5C */	b lbl_805B5F80
lbl_805B5F28:
/* 805B5F28  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 805B5F2C  3C 00 43 30 */	lis r0, 0x4330
/* 805B5F30  3C 80 80 65 */	lis r4, lit_668@ha /* 0x8064A984@ha */
/* 805B5F34  90 61 00 0C */	stw r3, 0xc(r1)
/* 805B5F38  38 64 A9 84 */	addi r3, r4, lit_668@l /* 0x8064A984@l */
/* 805B5F3C  3B 00 00 FF */	li r24, 0xff
/* 805B5F40  90 01 00 08 */	stw r0, 8(r1)
/* 805B5F44  3C 80 80 65 */	lis r4, lit_809@ha /* 0x8064A99C@ha */
/* 805B5F48  C8 23 00 00 */	lfd f1, 0(r3)
/* 805B5F4C  3C 60 80 65 */	lis r3, lit_810@ha /* 0x8064A9A0@ha */
/* 805B5F50  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B5F54  3A E0 00 FF */	li r23, 0xff
/* 805B5F58  C0 44 A9 9C */	lfs f2, lit_809@l(r4)  /* 0x8064A99C@l */
/* 805B5F5C  3B A0 00 96 */	li r29, 0x96
/* 805B5F60  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B5F64  C0 23 A9 A0 */	lfs f1, lit_810@l(r3)  /* 0x8064A9A0@l */
/* 805B5F68  3B 80 00 FF */	li r28, 0xff
/* 805B5F6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805B5F70  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B5F74  FC 00 00 1E */	fctiwz f0, f0
/* 805B5F78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B5F7C  83 21 00 14 */	lwz r25, 0x14(r1)
lbl_805B5F80:
/* 805B5F80  80 1B 02 D8 */	lwz r0, 0x2d8(r27)
/* 805B5F84  7F C3 F3 78 */	mr r3, r30
/* 805B5F88  20 00 00 03 */	subfic r0, r0, 3
/* 805B5F8C  7C 00 00 34 */	cntlzw r0, r0
/* 805B5F90  54 1A D9 7E */	srwi r26, r0, 5
/* 805B5F94  4B E2 F1 9D */	bl _texture_z_light_fog_prim_shadow
/* 805B5F98  57 23 06 3E */	clrlwi r3, r25, 0x18
/* 805B5F9C  80 DE 03 00 */	lwz r6, 0x300(r30)
/* 805B5FA0  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805B5FA4  56 E0 82 1E */	rlwinm r0, r23, 0x10, 8, 0xf
/* 805B5FA8  90 66 00 00 */	stw r3, 0(r6)
/* 805B5FAC  53 00 C0 0E */	rlwimi r0, r24, 0x18, 0, 7
/* 805B5FB0  53 A0 44 2E */	rlwimi r0, r29, 8, 0x10, 0x17
/* 805B5FB4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805B5FB8  53 80 06 3E */	rlwimi r0, r28, 0, 0x18, 0x1f
/* 805B5FBC  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C5FDC@ha */
/* 805B5FC0  90 06 00 04 */	stw r0, 4(r6)
/* 805B5FC4  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805B5FC8  3C 80 DE 00 */	lis r4, 0xde00
/* 805B5FCC  38 63 5F DC */	addi r3, r3, mdl@l /* 0x806C5FDC@l */
/* 805B5FD0  90 A6 00 08 */	stw r5, 8(r6)
/* 805B5FD4  57 40 10 3A */	slwi r0, r26, 2
/* 805B5FD8  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805B5FDC  38 C6 00 10 */	addi r6, r6, 0x10
/* 805B5FE0  7C C5 33 78 */	mr r5, r6
/* 805B5FE4  90 86 00 00 */	stw r4, 0(r6)
/* 805B5FE8  38 C6 00 08 */	addi r6, r6, 8
/* 805B5FEC  80 9B 02 B8 */	lwz r4, 0x2b8(r27)
/* 805B5FF0  54 84 18 38 */	slwi r4, r4, 3
/* 805B5FF4  7C 63 22 14 */	add r3, r3, r4
/* 805B5FF8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B5FFC  90 05 00 04 */	stw r0, 4(r5)
/* 805B6000  90 DE 03 00 */	stw r6, 0x300(r30)
lbl_805B6004:
/* 805B6004  38 60 00 01 */	li r3, 1
/* 805B6008  39 61 00 40 */	addi r11, r1, 0x40
/* 805B600C  4B AE 4E FD */	bl func_8009AF08
/* 805B6010  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B6014  7C 08 03 A6 */	mtlr r0
/* 805B6018  38 21 00 40 */	addi r1, r1, 0x40
/* 805B601C  4E 80 00 20 */	blr 
