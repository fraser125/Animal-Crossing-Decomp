lbl_805781D0:
/* 805781D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805781D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805781D8  3C A3 00 02 */	addis r5, r3, 2
/* 805781DC  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805781E0  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 805781E4  88 03 00 86 */	lbz r0, 0x86(r3)
/* 805781E8  88 C3 00 87 */	lbz r6, 0x87(r3)
/* 805781EC  7C 04 00 40 */	cmplw r4, r0
/* 805781F0  41 82 00 0C */	beq lbl_805781FC
/* 805781F4  38 C0 00 00 */	li r6, 0
/* 805781F8  98 83 00 86 */	stb r4, 0x86(r3)
lbl_805781FC:
/* 805781FC  38 C6 00 01 */	addi r6, r6, 1
/* 80578200  2C 06 00 FF */	cmpwi r6, 0xff
/* 80578204  40 81 00 08 */	ble lbl_8057820C
/* 80578208  38 C0 00 FF */	li r6, 0xff
lbl_8057820C:
/* 8057820C  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 80578210  98 C3 00 87 */	stb r6, 0x87(r3)
/* 80578214  4E 80 00 20 */	blr 
