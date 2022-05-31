lbl_803EAC04:
/* 803EAC04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EAC08  7C 08 02 A6 */	mflr r0
/* 803EAC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EAC10  39 61 00 20 */	addi r11, r1, 0x20
/* 803EAC14  4B CB 02 C1 */	bl func_8009AED4
/* 803EAC18  7C 7D 1B 78 */	mr r29, r3
/* 803EAC1C  7C 9E 23 78 */	mr r30, r4
/* 803EAC20  3B E0 00 00 */	li r31, 0
/* 803EAC24  4B FF B3 59 */	bl mRmTp_CheckFtrBirthInfoTop
/* 803EAC28  38 00 04 F2 */	li r0, 0x4f2
/* 803EAC2C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803EAC30  38 A0 00 00 */	li r5, 0
/* 803EAC34  7C 09 03 A6 */	mtctr r0
lbl_803EAC38:
/* 803EAC38  88 03 00 00 */	lbz r0, 0(r3)
/* 803EAC3C  7C 00 20 40 */	cmplw r0, r4
/* 803EAC40  40 82 00 20 */	bne lbl_803EAC60
/* 803EAC44  7C 1F F0 00 */	cmpw r31, r30
/* 803EAC48  40 82 00 14 */	bne lbl_803EAC5C
/* 803EAC4C  7C A3 2B 78 */	mr r3, r5
/* 803EAC50  38 80 00 00 */	li r4, 0
/* 803EAC54  4B FF CB 81 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803EAC58  48 00 00 18 */	b lbl_803EAC70
lbl_803EAC5C:
/* 803EAC5C  3B FF 00 01 */	addi r31, r31, 1
lbl_803EAC60:
/* 803EAC60  38 63 00 01 */	addi r3, r3, 1
/* 803EAC64  38 A5 00 01 */	addi r5, r5, 1
/* 803EAC68  42 00 FF D0 */	bdnz lbl_803EAC38
/* 803EAC6C  38 60 1E F8 */	li r3, 0x1ef8
lbl_803EAC70:
/* 803EAC70  39 61 00 20 */	addi r11, r1, 0x20
/* 803EAC74  4B CB 02 AD */	bl func_8009AF20
/* 803EAC78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EAC7C  7C 08 03 A6 */	mtlr r0
/* 803EAC80  38 21 00 20 */	addi r1, r1, 0x20
/* 803EAC84  4E 80 00 20 */	blr 
