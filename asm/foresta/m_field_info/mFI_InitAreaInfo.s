lbl_803A6BF8:
/* 803A6BF8  3C 60 81 16 */	lis r3, l_barea@ha /* 0x81167C00@ha */
/* 803A6BFC  38 A0 00 00 */	li r5, 0
/* 803A6C00  38 C3 7C 00 */	addi r6, r3, l_barea@l /* 0x81167C00@l */
/* 803A6C04  38 80 00 01 */	li r4, 1
/* 803A6C08  3C 60 80 65 */	lis r3, area_table@ha /* 0x80653E48@ha */
/* 803A6C0C  90 86 00 00 */	stw r4, 0(r6)
/* 803A6C10  38 00 00 06 */	li r0, 6
/* 803A6C14  38 83 3E 48 */	addi r4, r3, area_table@l /* 0x80653E48@l */
/* 803A6C18  90 A6 00 04 */	stw r5, 4(r6)
/* 803A6C1C  7C 09 03 A6 */	mtctr r0
lbl_803A6C20:
/* 803A6C20  7C 04 2C 2E */	lfsx f0, r4, r5
/* 803A6C24  7C 66 2A 14 */	add r3, r6, r5
/* 803A6C28  38 A5 00 04 */	addi r5, r5, 4
/* 803A6C2C  D0 03 00 08 */	stfs f0, 8(r3)
/* 803A6C30  42 00 FF F0 */	bdnz lbl_803A6C20
/* 803A6C34  4E 80 00 20 */	blr 
