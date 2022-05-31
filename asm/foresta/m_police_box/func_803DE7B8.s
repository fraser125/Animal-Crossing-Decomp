lbl_803DE7B8:
/* 803DE7B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DE7BC  38 00 00 14 */	li r0, 0x14
/* 803DE7C0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DE7C4  38 A0 00 00 */	li r5, 0
/* 803DE7C8  3C 84 00 02 */	addis r4, r4, 2
/* 803DE7CC  7C 09 03 A6 */	mtctr r0
/* 803DE7D0  38 84 0E D0 */	addi r4, r4, 0xed0
lbl_803DE7D4:
/* 803DE7D4  A0 03 00 00 */	lhz r0, 0(r3)
/* 803DE7D8  28 00 00 00 */	cmplwi r0, 0
/* 803DE7DC  41 82 00 10 */	beq lbl_803DE7EC
/* 803DE7E0  B0 04 00 00 */	sth r0, 0(r4)
/* 803DE7E4  38 A5 00 01 */	addi r5, r5, 1
/* 803DE7E8  38 84 00 02 */	addi r4, r4, 2
lbl_803DE7EC:
/* 803DE7EC  38 63 00 02 */	addi r3, r3, 2
/* 803DE7F0  42 00 FF E4 */	bdnz lbl_803DE7D4
/* 803DE7F4  20 05 00 14 */	subfic r0, r5, 0x14
/* 803DE7F8  38 60 00 00 */	li r3, 0
/* 803DE7FC  7C 09 03 A6 */	mtctr r0
/* 803DE800  2C 05 00 14 */	cmpwi r5, 0x14
/* 803DE804  4C 80 00 20 */	bgelr 
lbl_803DE808:
/* 803DE808  B0 64 00 00 */	sth r3, 0(r4)
/* 803DE80C  38 84 00 02 */	addi r4, r4, 2
/* 803DE810  42 00 FF F8 */	bdnz lbl_803DE808
/* 803DE814  4E 80 00 20 */	blr 
