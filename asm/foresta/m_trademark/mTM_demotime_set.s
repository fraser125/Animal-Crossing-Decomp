lbl_8062B7E0:
/* 8062B7E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062B7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8062B7E8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062B7EC  38 A0 00 00 */	li r5, 0
/* 8062B7F0  3C E4 00 02 */	addis r7, r4, 2
/* 8062B7F4  38 00 07 D1 */	li r0, 0x7d1
/* 8062B7F8  90 A7 61 30 */	stw r5, 0x6130(r7)
/* 8062B7FC  B0 07 61 26 */	sth r0, 0x6126(r7)
/* 8062B800  98 A7 61 21 */	stb r5, 0x6121(r7)
/* 8062B804  4D 82 00 20 */	beqlr 
/* 8062B808  1C 83 00 06 */	mulli r4, r3, 6
/* 8062B80C  3C 60 80 6D */	lis r3, tradeday_table@ha /* 0x806D49F0@ha */
/* 8062B810  38 03 49 F0 */	addi r0, r3, tradeday_table@l /* 0x806D49F0@l */
/* 8062B814  7C C0 22 14 */	add r6, r0, r4
/* 8062B818  88 A6 FF FA */	lbz r5, -6(r6)
/* 8062B81C  88 86 FF FB */	lbz r4, -5(r6)
/* 8062B820  88 66 FF FC */	lbz r3, -4(r6)
/* 8062B824  A8 06 FF FE */	lha r0, -2(r6)
/* 8062B828  98 A7 61 25 */	stb r5, 0x6125(r7)
/* 8062B82C  98 87 61 23 */	stb r4, 0x6123(r7)
/* 8062B830  98 67 61 22 */	stb r3, 0x6122(r7)
/* 8062B834  B0 07 66 6C */	sth r0, 0x666c(r7)
/* 8062B838  4E 80 00 20 */	blr 
