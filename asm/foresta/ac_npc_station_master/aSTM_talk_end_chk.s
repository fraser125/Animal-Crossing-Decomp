lbl_8057F5BC:
/* 8057F5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057F5C0  7C 08 02 A6 */	mflr r0
/* 8057F5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057F5C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F5CC  4B B1 B9 09 */	bl func_8009AED4
/* 8057F5D0  81 83 09 94 */	lwz r12, 0x994(r3)
/* 8057F5D4  7C 7F 1B 78 */	mr r31, r3
/* 8057F5D8  3B A0 00 00 */	li r29, 0
/* 8057F5DC  7C 9E 23 78 */	mr r30, r4
/* 8057F5E0  7D 89 03 A6 */	mtctr r12
/* 8057F5E4  4E 80 04 21 */	bctrl 
/* 8057F5E8  7F E4 FB 78 */	mr r4, r31
/* 8057F5EC  38 60 00 08 */	li r3, 8
/* 8057F5F0  4B E1 AC 75 */	bl mDemo_Check
/* 8057F5F4  2C 03 00 00 */	cmpwi r3, 0
/* 8057F5F8  40 82 00 60 */	bne lbl_8057F658
/* 8057F5FC  7F E4 FB 78 */	mr r4, r31
/* 8057F600  38 60 00 07 */	li r3, 7
/* 8057F604  4B E1 AC 61 */	bl mDemo_Check
/* 8057F608  2C 03 00 00 */	cmpwi r3, 0
/* 8057F60C  40 82 00 4C */	bne lbl_8057F658
/* 8057F610  88 1F 09 A1 */	lbz r0, 0x9a1(r31)
/* 8057F614  2C 00 00 0A */	cmpwi r0, 0xa
/* 8057F618  40 80 00 14 */	bge lbl_8057F62C
/* 8057F61C  2C 00 00 08 */	cmpwi r0, 8
/* 8057F620  40 80 00 08 */	bge lbl_8057F628
/* 8057F624  48 00 00 08 */	b lbl_8057F62C
lbl_8057F628:
/* 8057F628  4B FF FC A5 */	bl func_8057F2CC
lbl_8057F62C:
/* 8057F62C  88 BF 09 A1 */	lbz r5, 0x9a1(r31)
/* 8057F630  7F E3 FB 78 */	mr r3, r31
/* 8057F634  7F C4 F3 78 */	mr r4, r30
/* 8057F638  48 00 0D 6D */	bl aSTM_setup_think_proc
/* 8057F63C  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 8057F640  28 00 00 00 */	cmplwi r0, 0
/* 8057F644  41 82 00 10 */	beq lbl_8057F654
/* 8057F648  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 8057F64C  38 00 00 00 */	li r0, 0
/* 8057F650  98 1F 09 A3 */	stb r0, 0x9a3(r31)
lbl_8057F654:
/* 8057F654  3B A0 00 01 */	li r29, 1
lbl_8057F658:
/* 8057F658  7F A3 EB 78 */	mr r3, r29
/* 8057F65C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057F660  4B B1 B8 C1 */	bl func_8009AF20
/* 8057F664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057F668  7C 08 03 A6 */	mtlr r0
/* 8057F66C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057F670  4E 80 00 20 */	blr 
