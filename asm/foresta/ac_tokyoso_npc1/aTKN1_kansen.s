lbl_8058CE28:
/* 8058CE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058CE2C  7C 08 02 A6 */	mflr r0
/* 8058CE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058CE34  39 61 00 20 */	addi r11, r1, 0x20
/* 8058CE38  4B B0 E0 9D */	bl func_8009AED4
/* 8058CE3C  7C 7E 1B 78 */	mr r30, r3
/* 8058CE40  7C 9F 23 78 */	mr r31, r4
/* 8058CE44  A0 A3 00 06 */	lhz r5, 6(r3)
/* 8058CE48  38 60 00 0F */	li r3, 0xf
/* 8058CE4C  38 80 00 08 */	li r4, 8
/* 8058CE50  3C A5 FF FF */	addis r5, r5, 0xffff
/* 8058CE54  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 8058CE58  54 1D 07 FE */	clrlwi r29, r0, 0x1f
/* 8058CE5C  4B E1 0F 71 */	bl mEv_get_save_area
/* 8058CE60  80 1E 08 40 */	lwz r0, 0x840(r30)
/* 8058CE64  7C 66 1B 78 */	mr r6, r3
/* 8058CE68  60 00 08 00 */	ori r0, r0, 0x800
/* 8058CE6C  90 1E 08 40 */	stw r0, 0x840(r30)
/* 8058CE70  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8058CE74  28 00 00 00 */	cmplwi r0, 0
/* 8058CE78  40 82 00 38 */	bne lbl_8058CEB0
/* 8058CE7C  88 06 00 1D */	lbz r0, 0x1d(r6)
/* 8058CE80  28 00 00 00 */	cmplwi r0, 0
/* 8058CE84  40 82 00 2C */	bne lbl_8058CEB0
/* 8058CE88  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8058CE8C  38 80 00 01 */	li r4, 1
/* 8058CE90  88 A6 00 01 */	lbz r5, 1(r6)
/* 8058CE94  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058CE98  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058CE9C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8058CEA0  7C 80 00 30 */	slw r0, r4, r0
/* 8058CEA4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8058CEA8  7C A0 00 39 */	and. r0, r5, r0
/* 8058CEAC  41 82 00 24 */	beq lbl_8058CED0
lbl_8058CEB0:
/* 8058CEB0  7F C3 F3 78 */	mr r3, r30
/* 8058CEB4  7F E4 FB 78 */	mr r4, r31
/* 8058CEB8  38 A0 00 15 */	li r5, 0x15
/* 8058CEBC  48 00 06 61 */	bl aTKN1_setup_think_proc
/* 8058CEC0  80 1E 08 40 */	lwz r0, 0x840(r30)
/* 8058CEC4  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 8058CEC8  90 1E 08 40 */	stw r0, 0x840(r30)
/* 8058CECC  48 00 00 2C */	b lbl_8058CEF8
lbl_8058CED0:
/* 8058CED0  57 A0 10 3A */	slwi r0, r29, 2
/* 8058CED4  7F C3 F3 78 */	mr r3, r30
/* 8058CED8  7C C6 02 14 */	add r6, r6, r0
/* 8058CEDC  38 80 00 04 */	li r4, 4
/* 8058CEE0  A9 06 00 0A */	lha r8, 0xa(r6)
/* 8058CEE4  38 A0 00 04 */	li r5, 4
/* 8058CEE8  A9 26 00 0C */	lha r9, 0xc(r6)
/* 8058CEEC  38 C0 00 03 */	li r6, 3
/* 8058CEF0  38 E0 00 00 */	li r7, 0
/* 8058CEF4  4B FF F3 E1 */	bl aTKN1_set_request_act
lbl_8058CEF8:
/* 8058CEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8058CEFC  4B B0 E0 25 */	bl func_8009AF20
/* 8058CF00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058CF04  7C 08 03 A6 */	mtlr r0
/* 8058CF08  38 21 00 20 */	addi r1, r1, 0x20
/* 8058CF0C  4E 80 00 20 */	blr 
