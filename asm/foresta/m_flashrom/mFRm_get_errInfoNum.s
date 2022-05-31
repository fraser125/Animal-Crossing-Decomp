lbl_803AC814:
/* 803AC814  38 A0 00 00 */	li r5, 0
/* 803AC818  7C 89 03 A6 */	mtctr r4
/* 803AC81C  2C 04 00 00 */	cmpwi r4, 0
/* 803AC820  41 82 00 1C */	beq lbl_803AC83C
lbl_803AC824:
/* 803AC824  80 03 00 00 */	lwz r0, 0(r3)
/* 803AC828  2C 00 00 07 */	cmpwi r0, 7
/* 803AC82C  41 82 00 08 */	beq lbl_803AC834
/* 803AC830  38 A5 00 01 */	addi r5, r5, 1
lbl_803AC834:
/* 803AC834  38 63 00 08 */	addi r3, r3, 8
/* 803AC838  42 00 FF EC */	bdnz lbl_803AC824
lbl_803AC83C:
/* 803AC83C  7C A3 2B 78 */	mr r3, r5
/* 803AC840  4E 80 00 20 */	blr 
