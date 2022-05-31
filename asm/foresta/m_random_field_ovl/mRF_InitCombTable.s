lbl_8050B058:
/* 8050B058  3C 80 80 6A */	lis r4, init_cmb@ha /* 0x8069EF68@ha */
/* 8050B05C  38 00 00 46 */	li r0, 0x46
/* 8050B060  38 84 EF 68 */	addi r4, r4, init_cmb@l /* 0x8069EF68@l */
/* 8050B064  7C 09 03 A6 */	mtctr r0
lbl_8050B068:
/* 8050B068  A0 04 00 00 */	lhz r0, 0(r4)
/* 8050B06C  B0 03 00 00 */	sth r0, 0(r3)
/* 8050B070  38 63 00 02 */	addi r3, r3, 2
/* 8050B074  42 00 FF F4 */	bdnz lbl_8050B068
/* 8050B078  4E 80 00 20 */	blr 
