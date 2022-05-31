lbl_8049E804:
/* 8049E804  2C 04 00 01 */	cmpwi r4, 1
/* 8049E808  40 82 00 1C */	bne lbl_8049E824
/* 8049E80C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049E810  38 00 00 00 */	li r0, 0
/* 8049E814  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049E818  3C 63 00 02 */	addis r3, r3, 2
/* 8049E81C  90 03 60 7C */	stw r0, 0x607c(r3)
/* 8049E820  4E 80 00 20 */	blr 
lbl_8049E824:
/* 8049E824  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049E828  3C E0 80 4A */	lis r7, aSI_ChangeWall@ha /* 0x8049F194@ha */
/* 8049E82C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049E830  3C C0 80 4A */	lis r6, aSI_ChangeCarpet@ha /* 0x8049F0F4@ha */
/* 8049E834  39 23 01 94 */	addi r9, r3, 0x194
/* 8049E838  3C A0 80 4A */	lis r5, aSI_IndoorDmaAgain@ha /* 0x8049F2BC@ha */
/* 8049E83C  3D 04 00 02 */	addis r8, r4, 2
/* 8049E840  3C 80 80 4A */	lis r4, aSI_Change2Default@ha /* 0x8049F224@ha */
/* 8049E844  91 28 60 7C */	stw r9, 0x607c(r8)
/* 8049E848  38 E7 F1 94 */	addi r7, r7, aSI_ChangeWall@l /* 0x8049F194@l */
/* 8049E84C  38 C6 F0 F4 */	addi r6, r6, aSI_ChangeCarpet@l /* 0x8049F0F4@l */
/* 8049E850  38 A5 F2 BC */	addi r5, r5, aSI_IndoorDmaAgain@l /* 0x8049F2BC@l */
/* 8049E854  90 63 01 94 */	stw r3, 0x194(r3)
/* 8049E858  38 04 F2 24 */	addi r0, r4, aSI_Change2Default@l /* 0x8049F224@l */
/* 8049E85C  90 E3 01 98 */	stw r7, 0x198(r3)
/* 8049E860  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8049E864  90 A3 01 A0 */	stw r5, 0x1a0(r3)
/* 8049E868  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 8049E86C  4E 80 00 20 */	blr 
