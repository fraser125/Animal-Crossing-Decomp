lbl_804E3AAC:
/* 804E3AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3AB0  7C 08 02 A6 */	mflr r0
/* 804E3AB4  2C 05 00 00 */	cmpwi r5, 0
/* 804E3AB8  7C 8B 23 78 */	mr r11, r4
/* 804E3ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3AC4  7C 7F 1B 78 */	mr r31, r3
/* 804E3AC8  41 80 00 40 */	blt lbl_804E3B08
/* 804E3ACC  2C 05 00 03 */	cmpwi r5, 3
/* 804E3AD0  40 80 00 38 */	bge lbl_804E3B08
/* 804E3AD4  3C 60 80 65 */	lis r3, proc_6915@ha /* 0x80648104@ha */
/* 804E3AD8  54 A0 10 3A */	slwi r0, r5, 2
/* 804E3ADC  38 63 81 04 */	addi r3, r3, proc_6915@l /* 0x80648104@l */
/* 804E3AE0  7D 83 00 2E */	lwzx r12, r3, r0
/* 804E3AE4  28 0C 00 00 */	cmplwi r12, 0
/* 804E3AE8  41 82 00 20 */	beq lbl_804E3B08
/* 804E3AEC  7D 03 43 78 */	mr r3, r8
/* 804E3AF0  7D 28 4B 78 */	mr r8, r9
/* 804E3AF4  7F E4 FB 78 */	mr r4, r31
/* 804E3AF8  7D 65 5B 78 */	mr r5, r11
/* 804E3AFC  7D 49 53 78 */	mr r9, r10
/* 804E3B00  7D 89 03 A6 */	mtctr r12
/* 804E3B04  4E 80 04 21 */	bctrl 
lbl_804E3B08:
/* 804E3B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3B0C  38 60 00 01 */	li r3, 1
/* 804E3B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E3B14  7C 08 03 A6 */	mtlr r0
/* 804E3B18  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3B1C  4E 80 00 20 */	blr 
