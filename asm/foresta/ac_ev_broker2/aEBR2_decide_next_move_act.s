lbl_8051AD14:
/* 8051AD14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051AD18  7C 08 02 A6 */	mflr r0
/* 8051AD1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051AD20  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8051AD24  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8051AD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051AD2C  88 03 09 40 */	lbz r0, 0x940(r3)
/* 8051AD30  7C 7F 1B 78 */	mr r31, r3
/* 8051AD34  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8051AD38  41 82 00 0C */	beq lbl_8051AD44
/* 8051AD3C  38 60 00 00 */	li r3, 0
/* 8051AD40  48 00 00 A4 */	b lbl_8051ADE4
lbl_8051AD44:
/* 8051AD44  7C 83 23 78 */	mr r3, r4
/* 8051AD48  4B EB E8 F9 */	bl get_player_actor_withoutCheck
/* 8051AD4C  28 03 00 00 */	cmplwi r3, 0
/* 8051AD50  40 82 00 0C */	bne lbl_8051AD5C
/* 8051AD54  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 8051AD58  48 00 00 8C */	b lbl_8051ADE4
lbl_8051AD5C:
/* 8051AD5C  3C 60 80 65 */	lis r3, lit_590@ha /* 0x806490AC@ha */
/* 8051AD60  C3 FF 00 BC */	lfs f31, 0xbc(r31)
/* 8051AD64  C0 03 90 AC */	lfs f0, lit_590@l(r3)  /* 0x806490AC@l */
/* 8051AD68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051AD6C  40 80 00 0C */	bge lbl_8051AD78
/* 8051AD70  38 60 00 00 */	li r3, 0
/* 8051AD74  48 00 00 70 */	b lbl_8051ADE4
lbl_8051AD78:
/* 8051AD78  88 7F 09 A0 */	lbz r3, 0x9a0(r31)
/* 8051AD7C  88 9F 09 9E */	lbz r4, 0x99e(r31)
/* 8051AD80  7C 03 20 40 */	cmplw r3, r4
/* 8051AD84  41 82 00 40 */	beq lbl_8051ADC4
/* 8051AD88  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8051AD8C  2C 00 00 02 */	cmpwi r0, 2
/* 8051AD90  41 82 00 14 */	beq lbl_8051ADA4
/* 8051AD94  2C 00 00 04 */	cmpwi r0, 4
/* 8051AD98  41 82 00 0C */	beq lbl_8051ADA4
/* 8051AD9C  4B FF FF 71 */	bl aEBR2_get_next_zone
/* 8051ADA0  98 7F 09 9F */	stb r3, 0x99f(r31)
lbl_8051ADA4:
/* 8051ADA4  3C 60 80 65 */	lis r3, lit_591@ha /* 0x806490B0@ha */
/* 8051ADA8  C0 03 90 B0 */	lfs f0, lit_591@l(r3)  /* 0x806490B0@l */
/* 8051ADAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051ADB0  40 80 00 0C */	bge lbl_8051ADBC
/* 8051ADB4  38 60 00 02 */	li r3, 2
/* 8051ADB8  48 00 00 2C */	b lbl_8051ADE4
lbl_8051ADBC:
/* 8051ADBC  38 60 00 04 */	li r3, 4
/* 8051ADC0  48 00 00 24 */	b lbl_8051ADE4
lbl_8051ADC4:
/* 8051ADC4  3C 60 80 65 */	lis r3, lit_591@ha /* 0x806490B0@ha */
/* 8051ADC8  98 9F 09 9F */	stb r4, 0x99f(r31)
/* 8051ADCC  C0 03 90 B0 */	lfs f0, lit_591@l(r3)  /* 0x806490B0@l */
/* 8051ADD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051ADD4  40 80 00 0C */	bge lbl_8051ADE0
/* 8051ADD8  38 60 00 01 */	li r3, 1
/* 8051ADDC  48 00 00 08 */	b lbl_8051ADE4
lbl_8051ADE0:
/* 8051ADE0  38 60 00 03 */	li r3, 3
lbl_8051ADE4:
/* 8051ADE4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8051ADE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051ADEC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8051ADF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051ADF4  7C 08 03 A6 */	mtlr r0
/* 8051ADF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8051ADFC  4E 80 00 20 */	blr 
