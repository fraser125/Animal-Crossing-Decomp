lbl_80475800:
/* 80475800  A8 03 03 F8 */	lha r0, 0x3f8(r3)
/* 80475804  2C 00 00 01 */	cmpwi r0, 1
/* 80475808  40 82 00 3C */	bne lbl_80475844
/* 8047580C  A8 03 03 FA */	lha r0, 0x3fa(r3)
/* 80475810  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80475814  38 A4 DF E8 */	addi r5, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80475818  1C 80 08 58 */	mulli r4, r0, 0x858
/* 8047581C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80475820  38 04 08 40 */	addi r0, r4, 0x840
/* 80475824  7C 05 02 AE */	lhax r0, r5, r0
/* 80475828  2C 00 00 00 */	cmpwi r0, 0
/* 8047582C  4C 82 00 20 */	bnelr 
/* 80475830  38 00 00 00 */	li r0, 0
/* 80475834  B0 03 01 74 */	sth r0, 0x174(r3)
/* 80475838  B0 03 03 F8 */	sth r0, 0x3f8(r3)
/* 8047583C  B0 03 03 EE */	sth r0, 0x3ee(r3)
/* 80475840  4E 80 00 20 */	blr 
lbl_80475844:
/* 80475844  38 00 00 00 */	li r0, 0
/* 80475848  B0 03 03 EE */	sth r0, 0x3ee(r3)
/* 8047584C  B0 03 03 FA */	sth r0, 0x3fa(r3)
/* 80475850  4E 80 00 20 */	blr 
