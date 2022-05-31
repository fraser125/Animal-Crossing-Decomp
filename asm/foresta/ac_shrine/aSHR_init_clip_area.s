lbl_805BA5A0:
/* 805BA5A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BA5A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BA5A8  3C A3 00 02 */	addis r5, r3, 2
/* 805BA5AC  80 05 60 D4 */	lwz r0, 0x60d4(r5)
/* 805BA5B0  28 00 00 00 */	cmplwi r0, 0
/* 805BA5B4  4C 82 00 20 */	bnelr 
/* 805BA5B8  3C 80 81 20 */	lis r4, aSHR_clip@ha /* 0x811FA210@ha */
/* 805BA5BC  3C 60 80 5C */	lis r3, func_805BA584@ha /* 0x805BA584@ha */
/* 805BA5C0  38 84 A2 10 */	addi r4, r4, aSHR_clip@l /* 0x811FA210@l */
/* 805BA5C4  38 00 00 00 */	li r0, 0
/* 805BA5C8  90 85 60 D4 */	stw r4, 0x60d4(r5)
/* 805BA5CC  38 63 A5 84 */	addi r3, r3, func_805BA584@l /* 0x805BA584@l */
/* 805BA5D0  90 64 00 00 */	stw r3, 0(r4)
/* 805BA5D4  80 65 60 D4 */	lwz r3, 0x60d4(r5)
/* 805BA5D8  90 03 00 04 */	stw r0, 4(r3)
/* 805BA5DC  80 65 60 D4 */	lwz r3, 0x60d4(r5)
/* 805BA5E0  90 03 00 08 */	stw r0, 8(r3)
/* 805BA5E4  4E 80 00 20 */	blr 
