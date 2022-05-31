lbl_803F1ACC:
/* 803F1ACC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F1AD0  38 C0 00 00 */	li r6, 0
/* 803F1AD4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803F1AD8  3C A5 00 02 */	addis r5, r5, 2
/* 803F1ADC  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 803F1AE0  28 00 00 03 */	cmplwi r0, 3
/* 803F1AE4  40 82 00 30 */	bne lbl_803F1B14
/* 803F1AE8  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803F1AEC  38 60 00 03 */	li r3, 3
/* 803F1AF0  3C A5 FF FF */	addis r5, r5, 0xffff
/* 803F1AF4  38 A5 5F F8 */	addi r5, r5, 0x5ff8
/* 803F1AF8  7C 05 1B D6 */	divw r0, r5, r3
/* 803F1AFC  7C 00 19 D6 */	mullw r0, r0, r3
/* 803F1B00  7C 00 28 50 */	subf r0, r0, r5
/* 803F1B04  7C 00 22 14 */	add r0, r0, r4
/* 803F1B08  2C 00 00 03 */	cmpwi r0, 3
/* 803F1B0C  40 80 00 08 */	bge lbl_803F1B14
/* 803F1B10  38 C0 00 01 */	li r6, 1
lbl_803F1B14:
/* 803F1B14  7C C3 33 78 */	mr r3, r6
/* 803F1B18  4E 80 00 20 */	blr 
