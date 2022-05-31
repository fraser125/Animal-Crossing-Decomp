lbl_804C4770:
/* 804C4770  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804C4774  7C 08 02 A6 */	mflr r0
/* 804C4778  7C E8 3B 78 */	mr r8, r7
/* 804C477C  90 01 01 14 */	stw r0, 0x114(r1)
/* 804C4780  38 00 00 7B */	li r0, 0x7b
/* 804C4784  38 E1 00 08 */	addi r7, r1, 8
/* 804C4788  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 804C478C  7C 9F 23 78 */	mr r31, r4
/* 804C4790  38 80 00 00 */	li r4, 0
/* 804C4794  7C 09 03 A6 */	mtctr r0
lbl_804C4798:
/* 804C4798  B0 87 00 00 */	sth r4, 0(r7)
/* 804C479C  38 E7 00 02 */	addi r7, r7, 2
/* 804C47A0  42 00 FF F8 */	bdnz lbl_804C4798
/* 804C47A4  38 00 01 01 */	li r0, 0x101
/* 804C47A8  7F E7 FB 78 */	mr r7, r31
/* 804C47AC  38 80 01 00 */	li r4, 0x100
/* 804C47B0  7C 09 03 A6 */	mtctr r0
lbl_804C47B4:
/* 804C47B4  B0 87 00 44 */	sth r4, 0x44(r7)
/* 804C47B8  38 E7 00 48 */	addi r7, r7, 0x48
/* 804C47BC  42 00 FF F8 */	bdnz lbl_804C47B4
/* 804C47C0  7C C7 33 78 */	mr r7, r6
/* 804C47C4  7F E4 FB 78 */	mr r4, r31
/* 804C47C8  38 C1 00 08 */	addi r6, r1, 8
/* 804C47CC  4B FF FC 5D */	bl bg_item_common_classifyitemDataTable
/* 804C47D0  38 00 00 7B */	li r0, 0x7b
/* 804C47D4  38 61 00 08 */	addi r3, r1, 8
/* 804C47D8  80 9F 48 48 */	lwz r4, 0x4848(r31)
/* 804C47DC  7C 09 03 A6 */	mtctr r0
lbl_804C47E0:
/* 804C47E0  A0 03 00 00 */	lhz r0, 0(r3)
/* 804C47E4  38 63 00 02 */	addi r3, r3, 2
/* 804C47E8  B0 04 00 00 */	sth r0, 0(r4)
/* 804C47EC  38 84 00 02 */	addi r4, r4, 2
/* 804C47F0  42 00 FF F0 */	bdnz lbl_804C47E0
/* 804C47F4  38 00 00 01 */	li r0, 1
/* 804C47F8  B0 1F 48 50 */	sth r0, 0x4850(r31)
/* 804C47FC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804C4800  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 804C4804  7C 08 03 A6 */	mtlr r0
/* 804C4808  38 21 01 10 */	addi r1, r1, 0x110
/* 804C480C  4E 80 00 20 */	blr 
