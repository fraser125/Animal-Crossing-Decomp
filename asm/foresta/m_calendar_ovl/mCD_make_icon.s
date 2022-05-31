lbl_805C6950:
/* 805C6950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C6954  7C 08 02 A6 */	mflr r0
/* 805C6958  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C695C  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6960  4B AD 45 71 */	bl func_8009AED0
/* 805C6964  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 805C6968  54 67 04 3E */	clrlwi r7, r3, 0x10
/* 805C696C  39 08 85 38 */	addi r8, r8, common_data@l /* 0x81138538@l */
/* 805C6970  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 805C6974  3D 08 00 02 */	addis r8, r8, 2
/* 805C6978  7C BC 2B 78 */	mr r28, r5
/* 805C697C  A0 08 61 26 */	lhz r0, 0x6126(r8)
/* 805C6980  7C DD 33 78 */	mr r29, r6
/* 805C6984  89 08 61 25 */	lbz r8, 0x6125(r8)
/* 805C6988  3B C0 00 00 */	li r30, 0
/* 805C698C  7C 07 00 50 */	subf r0, r7, r0
/* 805C6990  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805C6994  7C FF 40 50 */	subf r7, r31, r8
/* 805C6998  7C 07 02 15 */	add. r0, r7, r0
/* 805C699C  41 80 00 3C */	blt lbl_805C69D8
/* 805C69A0  2C 00 00 0C */	cmpwi r0, 0xc
/* 805C69A4  40 80 00 34 */	bge lbl_805C69D8
/* 805C69A8  4B FF FE F9 */	bl mCD_soncho_chk
/* 805C69AC  28 03 00 00 */	cmplwi r3, 0
/* 805C69B0  41 82 00 0C */	beq lbl_805C69BC
/* 805C69B4  3B C0 00 02 */	li r30, 2
/* 805C69B8  48 00 00 20 */	b lbl_805C69D8
lbl_805C69BC:
/* 805C69BC  7F A3 EB 78 */	mr r3, r29
/* 805C69C0  7F E4 FB 78 */	mr r4, r31
/* 805C69C4  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 805C69C8  4B FF FD 2D */	bl func_805C66F4
/* 805C69CC  28 03 00 00 */	cmplwi r3, 0
/* 805C69D0  41 82 00 08 */	beq lbl_805C69D8
/* 805C69D4  3B C0 00 01 */	li r30, 1
lbl_805C69D8:
/* 805C69D8  7F C3 F3 78 */	mr r3, r30
/* 805C69DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805C69E0  4B AD 45 3D */	bl func_8009AF1C
/* 805C69E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C69E8  7C 08 03 A6 */	mtlr r0
/* 805C69EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805C69F0  4E 80 00 20 */	blr 
