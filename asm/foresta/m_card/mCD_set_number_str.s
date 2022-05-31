lbl_803FB3AC:
/* 803FB3AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FB3B0  7C 08 02 A6 */	mflr r0
/* 803FB3B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FB3B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803FB3BC  4B C9 FB 19 */	bl func_8009AED4
/* 803FB3C0  7C 7D 1B 78 */	mr r29, r3
/* 803FB3C4  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 803FB3C8  38 61 00 08 */	addi r3, r1, 8
/* 803FB3CC  3B C0 00 00 */	li r30, 0
/* 803FB3D0  38 80 00 0C */	li r4, 0xc
/* 803FB3D4  4B C6 1C 95 */	bl bzero
/* 803FB3D8  38 00 00 03 */	li r0, 3
/* 803FB3DC  38 81 00 08 */	addi r4, r1, 8
/* 803FB3E0  38 60 00 00 */	li r3, 0
/* 803FB3E4  38 A0 00 0A */	li r5, 0xa
/* 803FB3E8  7C 09 03 A6 */	mtctr r0
lbl_803FB3EC:
/* 803FB3EC  7C 1F 2B D6 */	divw r0, r31, r5
/* 803FB3F0  7C 00 29 D6 */	mullw r0, r0, r5
/* 803FB3F4  7C 00 F8 50 */	subf r0, r0, r31
/* 803FB3F8  7F FF 2B D6 */	divw r31, r31, r5
/* 803FB3FC  7C 04 19 2E */	stwx r0, r4, r3
/* 803FB400  38 63 00 04 */	addi r3, r3, 4
/* 803FB404  42 00 FF E8 */	bdnz lbl_803FB3EC
/* 803FB408  38 00 00 02 */	li r0, 2
/* 803FB40C  38 81 00 08 */	addi r4, r1, 8
/* 803FB410  38 60 00 08 */	li r3, 8
/* 803FB414  7C 09 03 A6 */	mtctr r0
lbl_803FB418:
/* 803FB418  7C A4 18 2E */	lwzx r5, r4, r3
/* 803FB41C  2C 05 00 00 */	cmpwi r5, 0
/* 803FB420  41 81 00 0C */	bgt lbl_803FB42C
/* 803FB424  2C 1E 00 01 */	cmpwi r30, 1
/* 803FB428  40 82 00 14 */	bne lbl_803FB43C
lbl_803FB42C:
/* 803FB42C  38 05 00 30 */	addi r0, r5, 0x30
/* 803FB430  3B C0 00 01 */	li r30, 1
/* 803FB434  98 1D 00 00 */	stb r0, 0(r29)
/* 803FB438  3B BD 00 01 */	addi r29, r29, 1
lbl_803FB43C:
/* 803FB43C  38 63 FF FC */	addi r3, r3, -4
/* 803FB440  42 00 FF D8 */	bdnz lbl_803FB418
/* 803FB444  80 61 00 08 */	lwz r3, 8(r1)
/* 803FB448  39 61 00 30 */	addi r11, r1, 0x30
/* 803FB44C  38 03 00 30 */	addi r0, r3, 0x30
/* 803FB450  98 1D 00 00 */	stb r0, 0(r29)
/* 803FB454  4B C9 FA CD */	bl func_8009AF20
/* 803FB458  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FB45C  7C 08 03 A6 */	mtlr r0
/* 803FB460  38 21 00 30 */	addi r1, r1, 0x30
/* 803FB464  4E 80 00 20 */	blr 
