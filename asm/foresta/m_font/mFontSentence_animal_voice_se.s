lbl_803B0D94:
/* 803B0D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B0D98  7C 08 02 A6 */	mflr r0
/* 803B0D9C  7C 66 1B 78 */	mr r6, r3
/* 803B0DA0  3C 60 80 64 */	lis r3, lit_629@ha /* 0x80642094@ha */
/* 803B0DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B0DA8  C0 06 00 5C */	lfs f0, 0x5c(r6)
/* 803B0DAC  C0 26 00 60 */	lfs f1, 0x60(r6)
/* 803B0DB0  EC 40 00 32 */	fmuls f2, f0, f0
/* 803B0DB4  C0 03 20 94 */	lfs f0, lit_629@l(r3)  /* 0x80642094@l */
/* 803B0DB8  EC 21 00 72 */	fmuls f1, f1, f1
/* 803B0DBC  EC 82 08 2A */	fadds f4, f2, f1
/* 803B0DC0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 803B0DC4  40 81 00 6C */	ble lbl_803B0E30
/* 803B0DC8  FC 20 20 34 */	frsqrte f1, f4
/* 803B0DCC  3C 60 80 64 */	lis r3, lit_923@ha /* 0x806420E4@ha */
/* 803B0DD0  38 83 20 E4 */	addi r4, r3, lit_923@l /* 0x806420E4@l */
/* 803B0DD4  3C 60 80 64 */	lis r3, lit_924@ha /* 0x806420EC@ha */
/* 803B0DD8  C8 64 00 00 */	lfd f3, 0(r4)
/* 803B0DDC  FC 01 00 72 */	fmul f0, f1, f1
/* 803B0DE0  C8 43 20 EC */	lfd f2, lit_924@l(r3)  /* 0x806420EC@l */
/* 803B0DE4  FC 23 00 72 */	fmul f1, f3, f1
/* 803B0DE8  FC 04 00 32 */	fmul f0, f4, f0
/* 803B0DEC  FC 02 00 28 */	fsub f0, f2, f0
/* 803B0DF0  FC 21 00 32 */	fmul f1, f1, f0
/* 803B0DF4  FC 01 00 72 */	fmul f0, f1, f1
/* 803B0DF8  FC 23 00 72 */	fmul f1, f3, f1
/* 803B0DFC  FC 04 00 32 */	fmul f0, f4, f0
/* 803B0E00  FC 02 00 28 */	fsub f0, f2, f0
/* 803B0E04  FC 21 00 32 */	fmul f1, f1, f0
/* 803B0E08  FC 01 00 72 */	fmul f0, f1, f1
/* 803B0E0C  FC 23 00 72 */	fmul f1, f3, f1
/* 803B0E10  FC 04 00 32 */	fmul f0, f4, f0
/* 803B0E14  FC 02 00 28 */	fsub f0, f2, f0
/* 803B0E18  FC 01 00 32 */	fmul f0, f1, f0
/* 803B0E1C  FC 04 00 32 */	fmul f0, f4, f0
/* 803B0E20  FC 00 00 18 */	frsp f0, f0
/* 803B0E24  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B0E28  C0 21 00 08 */	lfs f1, 8(r1)
/* 803B0E2C  48 00 00 08 */	b lbl_803B0E34
lbl_803B0E30:
/* 803B0E30  FC 20 20 90 */	fmr f1, f4
lbl_803B0E34:
/* 803B0E34  C0 06 00 38 */	lfs f0, 0x38(r6)
/* 803B0E38  3C 80 80 64 */	lis r4, lit_773@ha /* 0x806420D0@ha */
/* 803B0E3C  3C 60 80 64 */	lis r3, lit_925@ha /* 0x806420F4@ha */
/* 803B0E40  C0 44 20 D0 */	lfs f2, lit_773@l(r4)  /* 0x806420D0@l */
/* 803B0E44  EC 00 00 72 */	fmuls f0, f0, f1
/* 803B0E48  C0 23 20 F4 */	lfs f1, lit_925@l(r3)  /* 0x806420F4@l */
/* 803B0E4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B0E50  EC 02 00 2A */	fadds f0, f2, f0
/* 803B0E54  FC 00 00 1E */	fctiwz f0, f0
/* 803B0E58  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803B0E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B0E60  2C 00 00 00 */	cmpwi r0, 0
/* 803B0E64  40 80 00 0C */	bge lbl_803B0E70
/* 803B0E68  38 80 00 00 */	li r4, 0
/* 803B0E6C  48 00 00 14 */	b lbl_803B0E80
lbl_803B0E70:
/* 803B0E70  2C 00 00 FF */	cmpwi r0, 0xff
/* 803B0E74  38 80 00 FF */	li r4, 0xff
/* 803B0E78  41 81 00 08 */	bgt lbl_803B0E80
/* 803B0E7C  7C 04 03 78 */	mr r4, r0
lbl_803B0E80:
/* 803B0E80  88 06 00 46 */	lbz r0, 0x46(r6)
/* 803B0E84  28 00 00 80 */	cmplwi r0, 0x80
/* 803B0E88  40 82 00 50 */	bne lbl_803B0ED8
/* 803B0E8C  A8 06 00 44 */	lha r0, 0x44(r6)
/* 803B0E90  2C 00 00 00 */	cmpwi r0, 0
/* 803B0E94  41 82 00 44 */	beq lbl_803B0ED8
/* 803B0E98  2C 04 00 20 */	cmpwi r4, 0x20
/* 803B0E9C  40 82 00 3C */	bne lbl_803B0ED8
/* 803B0EA0  88 06 00 80 */	lbz r0, 0x80(r6)
/* 803B0EA4  28 00 00 32 */	cmplwi r0, 0x32
/* 803B0EA8  40 82 00 30 */	bne lbl_803B0ED8
/* 803B0EAC  88 06 00 81 */	lbz r0, 0x81(r6)
/* 803B0EB0  28 00 00 3C */	cmplwi r0, 0x3c
/* 803B0EB4  40 82 00 24 */	bne lbl_803B0ED8
/* 803B0EB8  88 06 00 82 */	lbz r0, 0x82(r6)
/* 803B0EBC  28 00 00 32 */	cmplwi r0, 0x32
/* 803B0EC0  40 82 00 18 */	bne lbl_803B0ED8
/* 803B0EC4  88 06 00 83 */	lbz r0, 0x83(r6)
/* 803B0EC8  28 00 00 FF */	cmplwi r0, 0xff
/* 803B0ECC  40 82 00 0C */	bne lbl_803B0ED8
/* 803B0ED0  38 00 00 00 */	li r0, 0
/* 803B0ED4  B0 06 00 44 */	sth r0, 0x44(r6)
lbl_803B0ED8:
/* 803B0ED8  88 66 00 46 */	lbz r3, 0x46(r6)
/* 803B0EDC  54 87 06 3E */	clrlwi r7, r4, 0x18
/* 803B0EE0  88 86 00 47 */	lbz r4, 0x47(r6)
/* 803B0EE4  39 00 00 00 */	li r8, 0
/* 803B0EE8  88 A6 00 48 */	lbz r5, 0x48(r6)
/* 803B0EEC  A8 C6 00 44 */	lha r6, 0x44(r6)
/* 803B0EF0  48 27 CF 75 */	bl sAdo_VoiceSe
/* 803B0EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B0EF8  7C 08 03 A6 */	mtlr r0
/* 803B0EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 803B0F00  4E 80 00 20 */	blr 
