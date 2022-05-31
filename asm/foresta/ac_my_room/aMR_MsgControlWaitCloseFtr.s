lbl_80474E10:
/* 80474E10  A8 03 03 F8 */	lha r0, 0x3f8(r3)
/* 80474E14  2C 00 00 01 */	cmpwi r0, 1
/* 80474E18  40 82 00 38 */	bne lbl_80474E50
/* 80474E1C  A8 03 03 FA */	lha r0, 0x3fa(r3)
/* 80474E20  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80474E24  38 A4 DF E8 */	addi r5, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80474E28  1C 80 08 58 */	mulli r4, r0, 0x858
/* 80474E2C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80474E30  38 04 08 40 */	addi r0, r4, 0x840
/* 80474E34  7C 05 02 AE */	lhax r0, r5, r0
/* 80474E38  2C 00 00 00 */	cmpwi r0, 0
/* 80474E3C  4C 82 00 20 */	bnelr 
/* 80474E40  38 00 00 00 */	li r0, 0
/* 80474E44  B0 03 03 F8 */	sth r0, 0x3f8(r3)
/* 80474E48  B0 03 03 EE */	sth r0, 0x3ee(r3)
/* 80474E4C  4E 80 00 20 */	blr 
lbl_80474E50:
/* 80474E50  38 00 00 00 */	li r0, 0
/* 80474E54  B0 03 03 EE */	sth r0, 0x3ee(r3)
/* 80474E58  B0 03 03 FA */	sth r0, 0x3fa(r3)
/* 80474E5C  4E 80 00 20 */	blr 
