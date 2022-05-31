lbl_803BDB20:
/* 803BDB20  3C 80 80 65 */	lis r4, mMpswd_chg_code_table@ha /* 0x80656CEC@ha */
/* 803BDB24  39 00 00 00 */	li r8, 0
/* 803BDB28  38 E4 6C EC */	addi r7, r4, mMpswd_chg_code_table@l /* 0x80656CEC@l */
/* 803BDB2C  38 00 01 00 */	li r0, 0x100
lbl_803BDB30:
/* 803BDB30  7C E4 3B 78 */	mr r4, r7
/* 803BDB34  39 20 00 00 */	li r9, 0
/* 803BDB38  7C 09 03 A6 */	mtctr r0
lbl_803BDB3C:
/* 803BDB3C  88 C4 00 00 */	lbz r6, 0(r4)
/* 803BDB40  88 A3 00 00 */	lbz r5, 0(r3)
/* 803BDB44  7C 06 28 40 */	cmplw r6, r5
/* 803BDB48  40 82 00 10 */	bne lbl_803BDB58
/* 803BDB4C  99 23 00 00 */	stb r9, 0(r3)
/* 803BDB50  38 63 00 01 */	addi r3, r3, 1
/* 803BDB54  48 00 00 10 */	b lbl_803BDB64
lbl_803BDB58:
/* 803BDB58  39 29 00 01 */	addi r9, r9, 1
/* 803BDB5C  38 84 00 01 */	addi r4, r4, 1
/* 803BDB60  42 00 FF DC */	bdnz lbl_803BDB3C
lbl_803BDB64:
/* 803BDB64  39 08 00 01 */	addi r8, r8, 1
/* 803BDB68  2C 08 00 15 */	cmpwi r8, 0x15
/* 803BDB6C  41 80 FF C4 */	blt lbl_803BDB30
/* 803BDB70  4E 80 00 20 */	blr 
