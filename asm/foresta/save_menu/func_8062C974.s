lbl_8062C974:
/* 8062C974  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8062C978  3C 80 80 65 */	lis r4, data_8064D10C@ha /* 0x8064D10C@ha */
/* 8062C97C  38 84 D1 0C */	addi r4, r4, data_8064D10C@l /* 0x8064D10C@l */
/* 8062C980  38 00 00 0F */	li r0, 0xf
/* 8062C984  38 C1 00 04 */	addi r6, r1, 4
/* 8062C988  38 A4 FF FC */	addi r5, r4, -4
/* 8062C98C  7C 09 03 A6 */	mtctr r0
lbl_8062C990:
/* 8062C990  80 85 00 04 */	lwz r4, 4(r5)
/* 8062C994  84 05 00 08 */	lwzu r0, 8(r5)
/* 8062C998  90 86 00 04 */	stw r4, 4(r6)
/* 8062C99C  94 06 00 08 */	stwu r0, 8(r6)
/* 8062C9A0  42 00 FF F0 */	bdnz lbl_8062C990
/* 8062C9A4  80 A3 02 04 */	lwz r5, 0x204(r3)
/* 8062C9A8  38 E1 00 08 */	addi r7, r1, 8
/* 8062C9AC  80 83 02 00 */	lwz r4, 0x200(r3)
/* 8062C9B0  38 00 00 03 */	li r0, 3
/* 8062C9B4  1C C5 00 0C */	mulli r6, r5, 0xc
/* 8062C9B8  54 85 F0 BE */	srwi r5, r4, 2
/* 8062C9BC  38 80 00 00 */	li r4, 0
/* 8062C9C0  1C A5 00 0C */	mulli r5, r5, 0xc
/* 8062C9C4  38 C6 02 0C */	addi r6, r6, 0x20c
/* 8062C9C8  7C C3 32 14 */	add r6, r3, r6
/* 8062C9CC  7C E7 2A 14 */	add r7, r7, r5
/* 8062C9D0  7C 09 03 A6 */	mtctr r0
lbl_8062C9D4:
/* 8062C9D4  7C 07 20 2E */	lwzx r0, r7, r4
/* 8062C9D8  7C 06 21 2E */	stwx r0, r6, r4
/* 8062C9DC  38 84 00 04 */	addi r4, r4, 4
/* 8062C9E0  42 00 FF F4 */	bdnz lbl_8062C9D4
/* 8062C9E4  38 21 00 80 */	addi r1, r1, 0x80
/* 8062C9E8  4E 80 00 20 */	blr 
