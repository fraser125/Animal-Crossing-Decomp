lbl_803EF01C:
/* 803EF01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF020  7C 08 02 A6 */	mflr r0
/* 803EF024  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF028  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EF02C  28 00 00 17 */	cmplwi r0, 0x17
/* 803EF030  40 81 00 08 */	ble lbl_803EF038
/* 803EF034  38 80 00 00 */	li r4, 0
lbl_803EF038:
/* 803EF038  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 803EF03C  2C 05 00 0C */	cmpwi r5, 0xc
/* 803EF040  41 82 00 14 */	beq lbl_803EF054
/* 803EF044  40 80 00 18 */	bge lbl_803EF05C
/* 803EF048  2C 05 00 00 */	cmpwi r5, 0
/* 803EF04C  41 82 00 08 */	beq lbl_803EF054
/* 803EF050  48 00 00 0C */	b lbl_803EF05C
lbl_803EF054:
/* 803EF054  38 A0 00 0C */	li r5, 0xc
/* 803EF058  48 00 00 14 */	b lbl_803EF06C
lbl_803EF05C:
/* 803EF05C  38 80 00 0C */	li r4, 0xc
/* 803EF060  7C 05 23 D6 */	divw r0, r5, r4
/* 803EF064  7C 00 21 D6 */	mullw r0, r0, r4
/* 803EF068  7C A0 28 50 */	subf r5, r0, r5
lbl_803EF06C:
/* 803EF06C  38 80 00 0F */	li r4, 0xf
/* 803EF070  38 C0 00 02 */	li r6, 2
/* 803EF074  38 E0 00 01 */	li r7, 1
/* 803EF078  39 00 00 00 */	li r8, 0
/* 803EF07C  39 20 00 00 */	li r9, 0
/* 803EF080  4B FC 03 F9 */	bl mFont_UnintToString
/* 803EF084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF088  7C 08 03 A6 */	mtlr r0
/* 803EF08C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF090  4E 80 00 20 */	blr 
