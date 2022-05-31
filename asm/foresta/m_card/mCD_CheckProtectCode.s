lbl_803FA718:
/* 803FA718  A0 03 00 00 */	lhz r0, 0(r3)
/* 803FA71C  38 80 00 00 */	li r4, 0
/* 803FA720  28 00 3C 1C */	cmplwi r0, 0x3c1c
/* 803FA724  40 82 00 38 */	bne lbl_803FA75C
/* 803FA728  38 00 00 03 */	li r0, 3
/* 803FA72C  38 A3 00 02 */	addi r5, r3, 2
/* 803FA730  38 60 00 00 */	li r3, 0
/* 803FA734  7C 09 03 A6 */	mtctr r0
lbl_803FA738:
/* 803FA738  A0 05 00 00 */	lhz r0, 0(r5)
/* 803FA73C  28 00 00 00 */	cmplwi r0, 0
/* 803FA740  41 82 00 10 */	beq lbl_803FA750
/* 803FA744  38 A5 00 02 */	addi r5, r5, 2
/* 803FA748  38 63 00 01 */	addi r3, r3, 1
/* 803FA74C  42 00 FF EC */	bdnz lbl_803FA738
lbl_803FA750:
/* 803FA750  2C 03 00 03 */	cmpwi r3, 3
/* 803FA754  40 82 00 08 */	bne lbl_803FA75C
/* 803FA758  38 80 00 01 */	li r4, 1
lbl_803FA75C:
/* 803FA75C  7C 83 23 78 */	mr r3, r4
/* 803FA760  4E 80 00 20 */	blr 
