lbl_803F27D0:
/* 803F27D0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F27D4  3C 60 80 66 */	lis r3, data_8065E1F0@ha /* 0x8065E1F0@ha */
/* 803F27D8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F27DC  3C E4 00 02 */	addis r7, r4, 2
/* 803F27E0  88 07 61 22 */	lbz r0, 0x6122(r7)
/* 803F27E4  38 83 E1 F0 */	addi r4, r3, data_8065E1F0@l /* 0x8065E1F0@l */
/* 803F27E8  88 A7 61 21 */	lbz r5, 0x6121(r7)
/* 803F27EC  38 60 00 00 */	li r3, 0
/* 803F27F0  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 803F27F4  88 C7 61 20 */	lbz r6, 0x6120(r7)
/* 803F27F8  7C 05 02 14 */	add r0, r5, r0
/* 803F27FC  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 803F2800  7C 06 02 14 */	add r0, r6, r0
lbl_803F2804:
/* 803F2804  7C A4 18 2E */	lwzx r5, r4, r3
/* 803F2808  7C 05 00 40 */	cmplw r5, r0
/* 803F280C  41 80 00 0C */	blt lbl_803F2818
/* 803F2810  38 65 FF 06 */	addi r3, r5, -250
/* 803F2814  48 00 00 0C */	b lbl_803F2820
lbl_803F2818:
/* 803F2818  38 63 00 04 */	addi r3, r3, 4
/* 803F281C  4B FF FF E8 */	b lbl_803F2804
lbl_803F2820:
/* 803F2820  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F2824  88 07 61 23 */	lbz r0, 0x6123(r7)
/* 803F2828  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F282C  3C 84 00 03 */	addis r4, r4, 3
/* 803F2830  98 04 88 43 */	stb r0, -0x77bd(r4)
/* 803F2834  4E 80 00 20 */	blr 
