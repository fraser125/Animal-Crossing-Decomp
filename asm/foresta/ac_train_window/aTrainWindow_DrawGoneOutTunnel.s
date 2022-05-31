lbl_804ACA60:
/* 804ACA60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804ACA64  7C 08 02 A6 */	mflr r0
/* 804ACA68  90 01 00 44 */	stw r0, 0x44(r1)
/* 804ACA6C  39 61 00 40 */	addi r11, r1, 0x40
/* 804ACA70  4B BE E4 65 */	bl func_8009AED4
/* 804ACA74  7C 9E 23 78 */	mr r30, r4
/* 804ACA78  7C 7D 1B 78 */	mr r29, r3
/* 804ACA7C  93 C1 00 08 */	stw r30, 8(r1)
/* 804ACA80  38 7D 01 84 */	addi r3, r29, 0x184
/* 804ACA84  38 9D 01 88 */	addi r4, r29, 0x188
/* 804ACA88  38 A0 00 00 */	li r5, 0
/* 804ACA8C  38 C0 00 00 */	li r6, 0
/* 804ACA90  38 E0 03 E8 */	li r7, 0x3e8
/* 804ACA94  39 00 00 00 */	li r8, 0
/* 804ACA98  39 20 00 40 */	li r9, 0x40
/* 804ACA9C  39 40 00 20 */	li r10, 0x20
/* 804ACAA0  4B FF FE 4D */	bl aTrainWindow_TileScroll
/* 804ACAA4  38 1D 01 94 */	addi r0, r29, 0x194
/* 804ACAA8  7C 7F 1B 78 */	mr r31, r3
/* 804ACAAC  90 01 00 08 */	stw r0, 8(r1)
/* 804ACAB0  38 7D 01 98 */	addi r3, r29, 0x198
/* 804ACAB4  39 60 00 00 */	li r11, 0
/* 804ACAB8  38 00 00 10 */	li r0, 0x10
/* 804ACABC  90 61 00 0C */	stw r3, 0xc(r1)
/* 804ACAC0  38 7D 01 8C */	addi r3, r29, 0x18c
/* 804ACAC4  38 9D 01 90 */	addi r4, r29, 0x190
/* 804ACAC8  38 A0 00 00 */	li r5, 0
/* 804ACACC  91 61 00 10 */	stw r11, 0x10(r1)
/* 804ACAD0  38 C0 00 00 */	li r6, 0
/* 804ACAD4  38 E0 03 E8 */	li r7, 0x3e8
/* 804ACAD8  39 00 00 00 */	li r8, 0
/* 804ACADC  91 61 00 14 */	stw r11, 0x14(r1)
/* 804ACAE0  39 20 00 40 */	li r9, 0x40
/* 804ACAE4  39 40 00 08 */	li r10, 8
/* 804ACAE8  91 61 00 18 */	stw r11, 0x18(r1)
/* 804ACAEC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 804ACAF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804ACAF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ACAF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804ACAFC  4B FF FE 79 */	bl aTrainWindow_TileScroll2
/* 804ACB00  28 1F 00 00 */	cmplwi r31, 0
/* 804ACB04  41 82 00 0C */	beq lbl_804ACB10
/* 804ACB08  28 03 00 00 */	cmplwi r3, 0
/* 804ACB0C  40 82 00 0C */	bne lbl_804ACB18
lbl_804ACB10:
/* 804ACB10  38 60 00 00 */	li r3, 0
/* 804ACB14  48 00 00 68 */	b lbl_804ACB7C
lbl_804ACB18:
/* 804ACB18  81 1E 00 00 */	lwz r8, 0(r30)
/* 804ACB1C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB06002C@ha */
/* 804ACB20  38 C4 00 2C */	addi r6, r4, 0x002C /* 0xDB06002C@l */
/* 804ACB24  80 E8 02 D0 */	lwz r7, 0x2d0(r8)
/* 804ACB28  38 A4 00 30 */	addi r5, r4, 0x30
/* 804ACB2C  38 07 00 08 */	addi r0, r7, 8
/* 804ACB30  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 804ACB34  90 C7 00 00 */	stw r6, 0(r7)
/* 804ACB38  93 E7 00 04 */	stw r31, 4(r7)
/* 804ACB3C  80 88 02 E0 */	lwz r4, 0x2e0(r8)
/* 804ACB40  38 04 00 08 */	addi r0, r4, 8
/* 804ACB44  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 804ACB48  90 C4 00 00 */	stw r6, 0(r4)
/* 804ACB4C  93 E4 00 04 */	stw r31, 4(r4)
/* 804ACB50  80 88 02 D0 */	lwz r4, 0x2d0(r8)
/* 804ACB54  38 04 00 08 */	addi r0, r4, 8
/* 804ACB58  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 804ACB5C  90 A4 00 00 */	stw r5, 0(r4)
/* 804ACB60  90 64 00 04 */	stw r3, 4(r4)
/* 804ACB64  80 88 02 E0 */	lwz r4, 0x2e0(r8)
/* 804ACB68  38 04 00 08 */	addi r0, r4, 8
/* 804ACB6C  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 804ACB70  90 A4 00 00 */	stw r5, 0(r4)
/* 804ACB74  90 64 00 04 */	stw r3, 4(r4)
/* 804ACB78  38 60 00 01 */	li r3, 1
lbl_804ACB7C:
/* 804ACB7C  39 61 00 40 */	addi r11, r1, 0x40
/* 804ACB80  4B BE E3 A1 */	bl func_8009AF20
/* 804ACB84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804ACB88  7C 08 03 A6 */	mtlr r0
/* 804ACB8C  38 21 00 40 */	addi r1, r1, 0x40
/* 804ACB90  4E 80 00 20 */	blr 
