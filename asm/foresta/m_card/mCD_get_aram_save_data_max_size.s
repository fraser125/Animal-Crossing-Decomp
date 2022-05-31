lbl_803FA058:
/* 803FA058  3C 60 80 66 */	lis r3, l_aram_alloc_size_table@ha /* 0x8065E768@ha */
/* 803FA05C  38 00 00 03 */	li r0, 3
/* 803FA060  38 A3 E7 68 */	addi r5, r3, l_aram_alloc_size_table@l /* 0x8065E768@l */
/* 803FA064  38 80 00 00 */	li r4, 0
/* 803FA068  38 60 00 00 */	li r3, 0
/* 803FA06C  7C 09 03 A6 */	mtctr r0
lbl_803FA070:
/* 803FA070  7C 05 20 2E */	lwzx r0, r5, r4
/* 803FA074  7C 00 18 40 */	cmplw r0, r3
/* 803FA078  40 81 00 08 */	ble lbl_803FA080
/* 803FA07C  7C 03 03 78 */	mr r3, r0
lbl_803FA080:
/* 803FA080  38 84 00 04 */	addi r4, r4, 4
/* 803FA084  42 00 FF EC */	bdnz lbl_803FA070
/* 803FA088  4E 80 00 20 */	blr 
