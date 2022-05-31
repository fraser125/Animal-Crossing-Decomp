lbl_8057D7AC:
/* 8057D7AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057D7B0  7C 08 02 A6 */	mflr r0
/* 8057D7B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057D7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057D7BC  4B B1 D7 19 */	bl func_8009AED4
/* 8057D7C0  81 83 09 A8 */	lwz r12, 0x9a8(r3)
/* 8057D7C4  7C 7F 1B 78 */	mr r31, r3
/* 8057D7C8  3B A0 00 00 */	li r29, 0
/* 8057D7CC  7C 9E 23 78 */	mr r30, r4
/* 8057D7D0  7D 89 03 A6 */	mtctr r12
/* 8057D7D4  4E 80 04 21 */	bctrl 
/* 8057D7D8  7F E4 FB 78 */	mr r4, r31
/* 8057D7DC  38 60 00 08 */	li r3, 8
/* 8057D7E0  4B E1 CA 85 */	bl mDemo_Check
/* 8057D7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8057D7E8  40 82 00 3C */	bne lbl_8057D824
/* 8057D7EC  7F E4 FB 78 */	mr r4, r31
/* 8057D7F0  38 60 00 07 */	li r3, 7
/* 8057D7F4  4B E1 CA 71 */	bl mDemo_Check
/* 8057D7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8057D7FC  40 82 00 28 */	bne lbl_8057D824
/* 8057D800  80 BF 09 98 */	lwz r5, 0x998(r31)
/* 8057D804  7F E3 FB 78 */	mr r3, r31
/* 8057D808  7F C4 F3 78 */	mr r4, r30
/* 8057D80C  48 00 0A 35 */	bl aSHM_setup_think_proc
/* 8057D810  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 8057D814  3B A0 00 01 */	li r29, 1
/* 8057D818  2C 00 00 00 */	cmpwi r0, 0
/* 8057D81C  41 82 00 08 */	beq lbl_8057D824
/* 8057D820  B0 1F 09 78 */	sth r0, 0x978(r31)
lbl_8057D824:
/* 8057D824  7F A3 EB 78 */	mr r3, r29
/* 8057D828  39 61 00 20 */	addi r11, r1, 0x20
/* 8057D82C  4B B1 D6 F5 */	bl func_8009AF20
/* 8057D830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057D834  7C 08 03 A6 */	mtlr r0
/* 8057D838  38 21 00 20 */	addi r1, r1, 0x20
/* 8057D83C  4E 80 00 20 */	blr 
