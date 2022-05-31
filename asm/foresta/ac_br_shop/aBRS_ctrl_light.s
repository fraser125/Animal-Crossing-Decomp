lbl_805A8EA0:
/* 805A8EA0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805A8EA4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 805A8EA8  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 805A8EAC  38 A0 00 00 */	li r5, 0
/* 805A8EB0  3C C6 00 02 */	addis r6, r6, 2
/* 805A8EB4  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 805A8EB8  80 86 61 1C */	lwz r4, 0x611c(r6)
/* 805A8EBC  7C 04 00 00 */	cmpw r4, r0
/* 805A8EC0  40 80 00 0C */	bge lbl_805A8ECC
/* 805A8EC4  2C 04 46 50 */	cmpwi r4, 0x4650
/* 805A8EC8  40 80 00 14 */	bge lbl_805A8EDC
lbl_805A8ECC:
/* 805A8ECC  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 805A8ED0  2C 00 00 00 */	cmpwi r0, 0
/* 805A8ED4  41 82 00 08 */	beq lbl_805A8EDC
/* 805A8ED8  38 A0 00 01 */	li r5, 1
lbl_805A8EDC:
/* 805A8EDC  7C A3 2B 78 */	mr r3, r5
/* 805A8EE0  4E 80 00 20 */	blr 
