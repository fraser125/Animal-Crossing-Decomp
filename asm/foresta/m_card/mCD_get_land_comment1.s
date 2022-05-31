lbl_803FB468:
/* 803FB468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB46C  7C 08 02 A6 */	mflr r0
/* 803FB470  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB474  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB478  4B C9 FA 59 */	bl func_8009AED0
/* 803FB47C  7C 9D 23 78 */	mr r29, r4
/* 803FB480  7C 7C 1B 78 */	mr r28, r3
/* 803FB484  7F BF EB 78 */	mr r31, r29
/* 803FB488  3B C0 00 00 */	li r30, 0
/* 803FB48C  38 80 00 20 */	li r4, 0x20
/* 803FB490  38 A0 00 00 */	li r5, 0
/* 803FB494  4B FB F5 B5 */	bl mem_clear
/* 803FB498  38 00 00 08 */	li r0, 8
/* 803FB49C  7C 09 03 A6 */	mtctr r0
lbl_803FB4A0:
/* 803FB4A0  88 7D 00 00 */	lbz r3, 0(r29)
/* 803FB4A4  38 1E 00 01 */	addi r0, r30, 1
/* 803FB4A8  3B BD 00 01 */	addi r29, r29, 1
/* 803FB4AC  38 63 FF E0 */	addi r3, r3, -32
/* 803FB4B0  20 63 00 00 */	subfic r3, r3, 0
/* 803FB4B4  7C 63 19 10 */	subfe r3, r3, r3
/* 803FB4B8  7C 1E 18 78 */	andc r30, r0, r3
/* 803FB4BC  42 00 FF E4 */	bdnz lbl_803FB4A0
/* 803FB4C0  7F FD FB 78 */	mr r29, r31
/* 803FB4C4  23 DE 00 08 */	subfic r30, r30, 8
/* 803FB4C8  3B E0 00 00 */	li r31, 0
/* 803FB4CC  48 00 00 1C */	b lbl_803FB4E8
lbl_803FB4D0:
/* 803FB4D0  88 9D 00 00 */	lbz r4, 0(r29)
/* 803FB4D4  7F 83 E3 78 */	mr r3, r28
/* 803FB4D8  4B FF FE C1 */	bl mCD_set_1byte
/* 803FB4DC  3B 9C 00 01 */	addi r28, r28, 1
/* 803FB4E0  3B BD 00 01 */	addi r29, r29, 1
/* 803FB4E4  3B FF 00 01 */	addi r31, r31, 1
lbl_803FB4E8:
/* 803FB4E8  7C 1F F0 00 */	cmpw r31, r30
/* 803FB4EC  41 80 FF E4 */	blt lbl_803FB4D0
/* 803FB4F0  3C 60 80 66 */	lis r3, l_comment_1_str@ha /* 0x8065E5A8@ha */
/* 803FB4F4  38 00 00 20 */	li r0, 0x20
/* 803FB4F8  38 63 E5 A8 */	addi r3, r3, l_comment_1_str@l /* 0x8065E5A8@l */
/* 803FB4FC  7C 09 03 A6 */	mtctr r0
lbl_803FB500:
/* 803FB500  88 03 00 00 */	lbz r0, 0(r3)
/* 803FB504  98 1C 00 00 */	stb r0, 0(r28)
/* 803FB508  88 03 00 00 */	lbz r0, 0(r3)
/* 803FB50C  28 00 00 00 */	cmplwi r0, 0
/* 803FB510  41 82 00 10 */	beq lbl_803FB520
/* 803FB514  3B 9C 00 01 */	addi r28, r28, 1
/* 803FB518  38 63 00 01 */	addi r3, r3, 1
/* 803FB51C  42 00 FF E4 */	bdnz lbl_803FB500
lbl_803FB520:
/* 803FB520  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB524  4B C9 F9 F9 */	bl func_8009AF1C
/* 803FB528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB52C  7C 08 03 A6 */	mtlr r0
/* 803FB530  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB534  4E 80 00 20 */	blr 
