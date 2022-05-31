lbl_803FB538:
/* 803FB538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB53C  7C 08 02 A6 */	mflr r0
/* 803FB540  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB544  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB548  4B C9 F9 89 */	bl func_8009AED0
/* 803FB54C  7C 9D 23 78 */	mr r29, r4
/* 803FB550  7C 7C 1B 78 */	mr r28, r3
/* 803FB554  7F BF EB 78 */	mr r31, r29
/* 803FB558  3B C0 00 00 */	li r30, 0
/* 803FB55C  38 80 00 20 */	li r4, 0x20
/* 803FB560  38 A0 00 00 */	li r5, 0
/* 803FB564  4B FB F4 E5 */	bl mem_clear
/* 803FB568  38 00 00 08 */	li r0, 8
/* 803FB56C  7C 09 03 A6 */	mtctr r0
lbl_803FB570:
/* 803FB570  88 7D 00 00 */	lbz r3, 0(r29)
/* 803FB574  38 1E 00 01 */	addi r0, r30, 1
/* 803FB578  3B BD 00 01 */	addi r29, r29, 1
/* 803FB57C  38 63 FF E0 */	addi r3, r3, -32
/* 803FB580  20 63 00 00 */	subfic r3, r3, 0
/* 803FB584  7C 63 19 10 */	subfe r3, r3, r3
/* 803FB588  7C 1E 18 78 */	andc r30, r0, r3
/* 803FB58C  42 00 FF E4 */	bdnz lbl_803FB570
/* 803FB590  7F FD FB 78 */	mr r29, r31
/* 803FB594  23 DE 00 08 */	subfic r30, r30, 8
/* 803FB598  3B E0 00 00 */	li r31, 0
/* 803FB59C  48 00 00 1C */	b lbl_803FB5B8
lbl_803FB5A0:
/* 803FB5A0  88 9D 00 00 */	lbz r4, 0(r29)
/* 803FB5A4  7F 83 E3 78 */	mr r3, r28
/* 803FB5A8  4B FF FD F1 */	bl mCD_set_1byte
/* 803FB5AC  3B 9C 00 01 */	addi r28, r28, 1
/* 803FB5B0  3B BD 00 01 */	addi r29, r29, 1
/* 803FB5B4  3B FF 00 01 */	addi r31, r31, 1
lbl_803FB5B8:
/* 803FB5B8  7C 1F F0 00 */	cmpw r31, r30
/* 803FB5BC  41 80 FF E4 */	blt lbl_803FB5A0
/* 803FB5C0  3C 60 80 66 */	lis r3, l_comment_player_1_str@ha /* 0x8065E608@ha */
/* 803FB5C4  38 00 00 20 */	li r0, 0x20
/* 803FB5C8  38 63 E6 08 */	addi r3, r3, l_comment_player_1_str@l /* 0x8065E608@l */
/* 803FB5CC  7C 09 03 A6 */	mtctr r0
lbl_803FB5D0:
/* 803FB5D0  88 03 00 00 */	lbz r0, 0(r3)
/* 803FB5D4  98 1C 00 00 */	stb r0, 0(r28)
/* 803FB5D8  88 03 00 00 */	lbz r0, 0(r3)
/* 803FB5DC  28 00 00 00 */	cmplwi r0, 0
/* 803FB5E0  41 82 00 10 */	beq lbl_803FB5F0
/* 803FB5E4  3B 9C 00 01 */	addi r28, r28, 1
/* 803FB5E8  38 63 00 01 */	addi r3, r3, 1
/* 803FB5EC  42 00 FF E4 */	bdnz lbl_803FB5D0
lbl_803FB5F0:
/* 803FB5F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB5F4  4B C9 F9 29 */	bl func_8009AF1C
/* 803FB5F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB5FC  7C 08 03 A6 */	mtlr r0
/* 803FB600  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB604  4E 80 00 20 */	blr 
