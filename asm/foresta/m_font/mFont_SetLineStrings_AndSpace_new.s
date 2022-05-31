lbl_803AFF2C:
/* 803AFF2C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 803AFF30  7C 08 02 A6 */	mflr r0
/* 803AFF34  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 803AFF38  39 61 00 E0 */	addi r11, r1, 0xe0
/* 803AFF3C  4B CE AF 99 */	bl func_8009AED4
/* 803AFF40  FC 00 1A 10 */	fabs f0, f3
/* 803AFF44  3D 60 80 64 */	lis r11, lit_685@ha /* 0x806420B4@ha */
/* 803AFF48  C0 AB 20 B4 */	lfs f5, lit_685@l(r11)  /* 0x806420B4@l */
/* 803AFF4C  7C 7D 1B 78 */	mr r29, r3
/* 803AFF50  80 01 00 F0 */	lwz r0, 0xf0(r1)
/* 803AFF54  FC 00 00 18 */	frsp f0, f0
/* 803AFF58  7C 00 00 34 */	cntlzw r0, r0
/* 803AFF5C  81 61 00 E8 */	lwz r11, 0xe8(r1)
/* 803AFF60  54 1F D9 7E */	srwi r31, r0, 5
/* 803AFF64  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 803AFF68  41 80 00 14 */	blt lbl_803AFF7C
/* 803AFF6C  FC 00 22 10 */	fabs f0, f4
/* 803AFF70  FC 00 00 18 */	frsp f0, f0
/* 803AFF74  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 803AFF78  40 80 00 10 */	bge lbl_803AFF88
lbl_803AFF7C:
/* 803AFF7C  3C 60 80 64 */	lis r3, lit_629@ha /* 0x80642094@ha */
/* 803AFF80  C0 23 20 94 */	lfs f1, lit_629@l(r3)  /* 0x80642094@l */
/* 803AFF84  48 00 00 D4 */	b lbl_803B0058
lbl_803AFF88:
/* 803AFF88  2C 05 00 00 */	cmpwi r5, 0
/* 803AFF8C  41 81 00 10 */	bgt lbl_803AFF9C
/* 803AFF90  3C 60 80 64 */	lis r3, lit_629@ha /* 0x80642094@ha */
/* 803AFF94  C0 23 20 94 */	lfs f1, lit_629@l(r3)  /* 0x80642094@l */
/* 803AFF98  48 00 00 C0 */	b lbl_803B0058
lbl_803AFF9C:
/* 803AFF9C  2C 1F 00 00 */	cmpwi r31, 0
/* 803AFFA0  83 DD 00 00 */	lwz r30, 0(r29)
/* 803AFFA4  41 82 00 0C */	beq lbl_803AFFB0
/* 803AFFA8  80 1E 02 D0 */	lwz r0, 0x2d0(r30)
/* 803AFFAC  48 00 00 08 */	b lbl_803AFFB4
lbl_803AFFB0:
/* 803AFFB0  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
lbl_803AFFB4:
/* 803AFFB4  2C 0A 00 00 */	cmpwi r10, 0
/* 803AFFB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AFFBC  38 60 00 04 */	li r3, 4
/* 803AFFC0  41 82 00 08 */	beq lbl_803AFFC8
/* 803AFFC4  60 63 00 02 */	ori r3, r3, 2
lbl_803AFFC8:
/* 803AFFC8  2C 0B 00 00 */	cmpwi r11, 0
/* 803AFFCC  41 82 00 08 */	beq lbl_803AFFD4
/* 803AFFD0  60 63 00 01 */	ori r3, r3, 1
lbl_803AFFD4:
/* 803AFFD4  98 C1 00 20 */	stb r6, 0x20(r1)
/* 803AFFD8  7C 66 1B 78 */	mr r6, r3
/* 803AFFDC  38 00 00 00 */	li r0, 0
/* 803AFFE0  38 61 00 38 */	addi r3, r1, 0x38
/* 803AFFE4  98 E1 00 21 */	stb r7, 0x21(r1)
/* 803AFFE8  38 E1 00 30 */	addi r7, r1, 0x30
/* 803AFFEC  39 41 00 20 */	addi r10, r1, 0x20
/* 803AFFF0  99 01 00 22 */	stb r8, 0x22(r1)
/* 803AFFF4  39 00 00 00 */	li r8, 0
/* 803AFFF8  99 21 00 23 */	stb r9, 0x23(r1)
/* 803AFFFC  39 21 00 28 */	addi r9, r1, 0x28
/* 803B0000  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 803B0004  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 803B0008  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 803B000C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 803B0010  90 01 00 08 */	stw r0, 8(r1)
/* 803B0014  90 01 00 0C */	stw r0, 0xc(r1)
/* 803B0018  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B001C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0020  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B0024  48 00 0E E1 */	bl mFontSentence_set
/* 803B0028  7F A4 EB 78 */	mr r4, r29
/* 803B002C  38 61 00 38 */	addi r3, r1, 0x38
/* 803B0030  38 A1 00 24 */	addi r5, r1, 0x24
/* 803B0034  48 00 11 F1 */	bl mFontSentence_gppDraw
/* 803B0038  2C 1F 00 00 */	cmpwi r31, 0
/* 803B003C  41 82 00 10 */	beq lbl_803B004C
/* 803B0040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B0044  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 803B0048  48 00 00 0C */	b lbl_803B0054
lbl_803B004C:
/* 803B004C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B0050  90 1E 02 F0 */	stw r0, 0x2f0(r30)
lbl_803B0054:
/* 803B0054  C0 21 00 6C */	lfs f1, 0x6c(r1)
lbl_803B0058:
/* 803B0058  39 61 00 E0 */	addi r11, r1, 0xe0
/* 803B005C  4B CE AE C5 */	bl func_8009AF20
/* 803B0060  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 803B0064  7C 08 03 A6 */	mtlr r0
/* 803B0068  38 21 00 E0 */	addi r1, r1, 0xe0
/* 803B006C  4E 80 00 20 */	blr 
