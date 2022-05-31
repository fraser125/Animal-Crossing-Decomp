lbl_803AF9E8:
/* 803AF9E8  2C 05 00 00 */	cmpwi r5, 0
/* 803AF9EC  80 C3 00 00 */	lwz r6, 0(r3)
/* 803AF9F0  41 82 00 18 */	beq lbl_803AFA08
/* 803AF9F4  3C A0 E7 00 */	lis r5, 0xe700
/* 803AF9F8  38 00 00 00 */	li r0, 0
/* 803AF9FC  90 A6 00 00 */	stw r5, 0(r6)
/* 803AFA00  90 06 00 04 */	stw r0, 4(r6)
/* 803AFA04  38 C6 00 08 */	addi r6, r6, 8
lbl_803AFA08:
/* 803AFA08  2C 04 00 00 */	cmpwi r4, 0
/* 803AFA0C  41 82 00 24 */	beq lbl_803AFA30
/* 803AFA10  3C A0 FD 00 */	lis r5, 0xFD00 /* 0xFCFFB3FF@ha */
/* 803AFA14  3C 80 FF E6 */	lis r4, 0xFFE6 /* 0xFFE5FEDB@ha */
/* 803AFA18  38 05 B3 FF */	addi r0, r5, 0xB3FF /* 0xFCFFB3FF@l */
/* 803AFA1C  90 06 00 00 */	stw r0, 0(r6)
/* 803AFA20  38 04 FE DB */	addi r0, r4, 0xFEDB /* 0xFFE5FEDB@l */
/* 803AFA24  90 06 00 04 */	stw r0, 4(r6)
/* 803AFA28  38 C6 00 08 */	addi r6, r6, 8
/* 803AFA2C  48 00 00 20 */	b lbl_803AFA4C
lbl_803AFA30:
/* 803AFA30  3C A0 FD 00 */	lis r5, 0xFD00 /* 0xFCFFB3FF@ha */
/* 803AFA34  3C 80 FF 66 */	lis r4, 0xFF66 /* 0xFF65FEFF@ha */
/* 803AFA38  38 05 B3 FF */	addi r0, r5, 0xB3FF /* 0xFCFFB3FF@l */
/* 803AFA3C  90 06 00 00 */	stw r0, 0(r6)
/* 803AFA40  38 04 FE FF */	addi r0, r4, 0xFEFF /* 0xFF65FEFF@l */
/* 803AFA44  90 06 00 04 */	stw r0, 4(r6)
/* 803AFA48  38 C6 00 08 */	addi r6, r6, 8
lbl_803AFA4C:
/* 803AFA4C  90 C3 00 00 */	stw r6, 0(r3)
/* 803AFA50  4E 80 00 20 */	blr 
