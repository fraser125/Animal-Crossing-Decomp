lbl_80559170:
/* 80559170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80559174  7C 08 02 A6 */	mflr r0
/* 80559178  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055917C  39 61 00 20 */	addi r11, r1, 0x20
/* 80559180  4B B4 1D 55 */	bl func_8009AED4
/* 80559184  81 83 09 A4 */	lwz r12, 0x9a4(r3)
/* 80559188  7C 7F 1B 78 */	mr r31, r3
/* 8055918C  3B A0 00 00 */	li r29, 0
/* 80559190  7C 9E 23 78 */	mr r30, r4
/* 80559194  7D 89 03 A6 */	mtctr r12
/* 80559198  4E 80 04 21 */	bctrl 
/* 8055919C  7F E4 FB 78 */	mr r4, r31
/* 805591A0  38 60 00 08 */	li r3, 8
/* 805591A4  4B E4 10 C1 */	bl mDemo_Check
/* 805591A8  2C 03 00 00 */	cmpwi r3, 0
/* 805591AC  40 82 00 34 */	bne lbl_805591E0
/* 805591B0  7F E4 FB 78 */	mr r4, r31
/* 805591B4  38 60 00 07 */	li r3, 7
/* 805591B8  4B E4 10 AD */	bl mDemo_Check
/* 805591BC  2C 03 00 00 */	cmpwi r3, 0
/* 805591C0  40 82 00 20 */	bne lbl_805591E0
/* 805591C4  38 00 00 00 */	li r0, 0
/* 805591C8  7F E3 FB 78 */	mr r3, r31
/* 805591CC  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 805591D0  7F C4 F3 78 */	mr r4, r30
/* 805591D4  80 BF 09 98 */	lwz r5, 0x998(r31)
/* 805591D8  48 00 05 29 */	bl aMJN4_setup_think_proc
/* 805591DC  3B A0 00 01 */	li r29, 1
lbl_805591E0:
/* 805591E0  7F A3 EB 78 */	mr r3, r29
/* 805591E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805591E8  4B B4 1D 39 */	bl func_8009AF20
/* 805591EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805591F0  7C 08 03 A6 */	mtlr r0
/* 805591F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805591F8  4E 80 00 20 */	blr 