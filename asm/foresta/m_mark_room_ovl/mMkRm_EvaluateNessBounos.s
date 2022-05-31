lbl_804D31A4:
/* 804D31A4  3C A0 80 6A */	lis r5, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D31A8  3C 80 81 1D */	lis r4, mMkRm_search_table@ha /* 0x811D2F18@ha */
/* 804D31AC  38 00 00 3C */	li r0, 0x3c
/* 804D31B0  39 00 00 00 */	li r8, 0
/* 804D31B4  38 E5 C9 F0 */	addi r7, r5, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D31B8  38 C4 2F 18 */	addi r6, r4, mMkRm_search_table@l /* 0x811D2F18@l */
/* 804D31BC  38 80 00 00 */	li r4, 0
/* 804D31C0  38 A0 00 00 */	li r5, 0
/* 804D31C4  7C 09 03 A6 */	mtctr r0
lbl_804D31C8:
/* 804D31C8  7C 07 28 AE */	lbzx r0, r7, r5
/* 804D31CC  2C 00 00 01 */	cmpwi r0, 1
/* 804D31D0  40 82 00 3C */	bne lbl_804D320C
/* 804D31D4  7D 26 20 2E */	lwzx r9, r6, r4
/* 804D31D8  55 20 06 FE */	clrlwi r0, r9, 0x1b
/* 804D31DC  7D 08 4B 78 */	or r8, r8, r9
/* 804D31E0  28 00 00 1F */	cmplwi r0, 0x1f
/* 804D31E4  40 82 00 28 */	bne lbl_804D320C
/* 804D31E8  80 A3 00 00 */	lwz r5, 0(r3)
/* 804D31EC  3C 80 81 1D */	lis r4, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D31F0  38 84 2D 10 */	addi r4, r4, data_811D2D10@l /* 0x811D2D10@l */
/* 804D31F4  38 05 3E 80 */	addi r0, r5, 0x3e80
/* 804D31F8  90 03 00 00 */	stw r0, 0(r3)
/* 804D31FC  80 04 00 04 */	lwz r0, 4(r4)
/* 804D3200  60 00 00 02 */	ori r0, r0, 2
/* 804D3204  90 04 00 04 */	stw r0, 4(r4)
/* 804D3208  4E 80 00 20 */	blr 
lbl_804D320C:
/* 804D320C  38 84 00 04 */	addi r4, r4, 4
/* 804D3210  38 A5 00 03 */	addi r5, r5, 3
/* 804D3214  42 00 FF B4 */	bdnz lbl_804D31C8
/* 804D3218  55 00 06 FE */	clrlwi r0, r8, 0x1b
/* 804D321C  28 00 00 1F */	cmplwi r0, 0x1f
/* 804D3220  4C 82 00 20 */	bnelr 
/* 804D3224  80 A3 00 00 */	lwz r5, 0(r3)
/* 804D3228  3C 80 81 1D */	lis r4, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D322C  38 84 2D 10 */	addi r4, r4, data_811D2D10@l /* 0x811D2D10@l */
/* 804D3230  38 05 11 30 */	addi r0, r5, 0x1130
/* 804D3234  90 03 00 00 */	stw r0, 0(r3)
/* 804D3238  80 04 00 04 */	lwz r0, 4(r4)
/* 804D323C  60 00 00 01 */	ori r0, r0, 1
/* 804D3240  90 04 00 04 */	stw r0, 4(r4)
/* 804D3244  4E 80 00 20 */	blr 
