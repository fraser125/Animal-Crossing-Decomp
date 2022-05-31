lbl_8047FA40:
/* 8047FA40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047FA44  7C 08 02 A6 */	mflr r0
/* 8047FA48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047FA4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047FA50  4B C1 B4 81 */	bl func_8009AED0
/* 8047FA54  81 05 00 08 */	lwz r8, 8(r5)
/* 8047FA58  3C A0 80 69 */	lis r5, rotateDt@ha /* 0x80688EA8@ha */
/* 8047FA5C  88 03 01 D0 */	lbz r0, 0x1d0(r3)
/* 8047FA60  38 65 8E A8 */	addi r3, r5, rotateDt@l /* 0x80688EA8@l */
/* 8047FA64  55 05 18 38 */	slwi r5, r8, 3
/* 8047FA68  7C 9C 23 78 */	mr r28, r4
/* 8047FA6C  7C 83 2A 14 */	add r4, r3, r5
/* 8047FA70  28 00 00 00 */	cmplwi r0, 0
/* 8047FA74  7C 63 28 2E */	lwzx r3, r3, r5
/* 8047FA78  7C DD 33 78 */	mr r29, r6
/* 8047FA7C  83 E4 00 04 */	lwz r31, 4(r4)
/* 8047FA80  7C FE 3B 78 */	mr r30, r7
/* 8047FA84  41 82 00 58 */	beq lbl_8047FADC
/* 8047FA88  7F C4 F3 78 */	mr r4, r30
/* 8047FA8C  4B FF 8C 29 */	bl aMR_JudgeStickFull
/* 8047FA90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047FA94  41 82 00 1C */	beq lbl_8047FAB0
/* 8047FA98  38 60 00 08 */	li r3, 8
/* 8047FA9C  38 00 00 03 */	li r0, 3
/* 8047FAA0  B0 7C 00 00 */	sth r3, 0(r28)
/* 8047FAA4  38 60 00 01 */	li r3, 1
/* 8047FAA8  B0 1D 08 28 */	sth r0, 0x828(r29)
/* 8047FAAC  48 00 00 34 */	b lbl_8047FAE0
lbl_8047FAB0:
/* 8047FAB0  7F E3 FB 78 */	mr r3, r31
/* 8047FAB4  7F C4 F3 78 */	mr r4, r30
/* 8047FAB8  4B FF 8B FD */	bl aMR_JudgeStickFull
/* 8047FABC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047FAC0  41 82 00 1C */	beq lbl_8047FADC
/* 8047FAC4  38 60 00 0A */	li r3, 0xa
/* 8047FAC8  38 00 00 03 */	li r0, 3
/* 8047FACC  B0 7C 00 00 */	sth r3, 0(r28)
/* 8047FAD0  38 60 00 01 */	li r3, 1
/* 8047FAD4  B0 1D 08 28 */	sth r0, 0x828(r29)
/* 8047FAD8  48 00 00 08 */	b lbl_8047FAE0
lbl_8047FADC:
/* 8047FADC  38 60 00 00 */	li r3, 0
lbl_8047FAE0:
/* 8047FAE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8047FAE4  4B C1 B4 39 */	bl func_8009AF1C
/* 8047FAE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047FAEC  7C 08 03 A6 */	mtlr r0
/* 8047FAF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8047FAF4  4E 80 00 20 */	blr 
