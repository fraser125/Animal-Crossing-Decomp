lbl_805C68A0:
/* 805C68A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C68A4  7C 08 02 A6 */	mflr r0
/* 805C68A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C68AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805C68B0  4B AD 46 25 */	bl func_8009AED4
/* 805C68B4  2C 06 FF FF */	cmpwi r6, -1
/* 805C68B8  7C BE 2B 78 */	mr r30, r5
/* 805C68BC  7C 9D 23 78 */	mr r29, r4
/* 805C68C0  38 A0 00 00 */	li r5, 0
/* 805C68C4  40 82 00 14 */	bne lbl_805C68D8
/* 805C68C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C68CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805C68D0  3C 84 00 02 */	addis r4, r4, 2
/* 805C68D4  88 C4 60 03 */	lbz r6, 0x6003(r4)
lbl_805C68D8:
/* 805C68D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C68DC  38 E4 85 38 */	addi r7, r4, common_data@l /* 0x81138538@l */
/* 805C68E0  3C 87 00 02 */	addis r4, r7, 2
/* 805C68E4  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 805C68E8  28 00 00 04 */	cmplwi r0, 4
/* 805C68EC  41 82 00 48 */	beq lbl_805C6934
/* 805C68F0  1C 06 24 40 */	mulli r0, r6, 0x2440
/* 805C68F4  7F A4 EB 78 */	mr r4, r29
/* 805C68F8  7F C5 F3 78 */	mr r5, r30
/* 805C68FC  7C C7 02 14 */	add r6, r7, r0
/* 805C6900  3B E6 23 6C */	addi r31, r6, 0x236c
/* 805C6904  7F E6 FB 78 */	mr r6, r31
/* 805C6908  4B FF FE 4D */	bl mCD_sp_soncho_chk
/* 805C690C  7C 65 1B 79 */	or. r5, r3, r3
/* 805C6910  40 82 00 24 */	bne lbl_805C6934
/* 805C6914  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 805C6918  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 805C691C  7C BF 02 14 */	add r5, r31, r0
/* 805C6920  38 80 00 01 */	li r4, 1
/* 805C6924  38 03 FF FF */	addi r0, r3, -1
/* 805C6928  80 65 00 2C */	lwz r3, 0x2c(r5)
/* 805C692C  7C 80 00 30 */	slw r0, r4, r0
/* 805C6930  7C 65 00 38 */	and r5, r3, r0
lbl_805C6934:
/* 805C6934  7C A3 2B 78 */	mr r3, r5
/* 805C6938  39 61 00 20 */	addi r11, r1, 0x20
/* 805C693C  4B AD 45 E5 */	bl func_8009AF20
/* 805C6940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C6944  7C 08 03 A6 */	mtlr r0
/* 805C6948  38 21 00 20 */	addi r1, r1, 0x20
/* 805C694C  4E 80 00 20 */	blr 
