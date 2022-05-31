lbl_8057ECE4:
/* 8057ECE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057ECE8  7C 08 02 A6 */	mflr r0
/* 8057ECEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057ECF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8057ECF4  4B B1 C1 E1 */	bl func_8009AED4
/* 8057ECF8  88 03 09 A1 */	lbz r0, 0x9a1(r3)
/* 8057ECFC  3C A0 80 6C */	lis r5, proc_539@ha /* 0x806C0A64@ha */
/* 8057ED00  38 A5 0A 64 */	addi r5, r5, proc_539@l /* 0x806C0A64@l */
/* 8057ED04  7C 7F 1B 78 */	mr r31, r3
/* 8057ED08  54 00 10 3A */	slwi r0, r0, 2
/* 8057ED0C  7C 9E 23 78 */	mr r30, r4
/* 8057ED10  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057ED14  3B A0 00 00 */	li r29, 0
/* 8057ED18  7D 89 03 A6 */	mtctr r12
/* 8057ED1C  4E 80 04 21 */	bctrl 
/* 8057ED20  7F E4 FB 78 */	mr r4, r31
/* 8057ED24  38 60 00 08 */	li r3, 8
/* 8057ED28  4B E1 B5 3D */	bl mDemo_Check
/* 8057ED2C  2C 03 00 00 */	cmpwi r3, 0
/* 8057ED30  40 82 00 2C */	bne lbl_8057ED5C
/* 8057ED34  7F E4 FB 78 */	mr r4, r31
/* 8057ED38  38 60 00 07 */	li r3, 7
/* 8057ED3C  4B E1 B5 29 */	bl mDemo_Check
/* 8057ED40  2C 03 00 00 */	cmpwi r3, 0
/* 8057ED44  40 82 00 18 */	bne lbl_8057ED5C
/* 8057ED48  88 BF 09 9F */	lbz r5, 0x99f(r31)
/* 8057ED4C  7F E3 FB 78 */	mr r3, r31
/* 8057ED50  7F C4 F3 78 */	mr r4, r30
/* 8057ED54  48 00 01 09 */	bl aNS_setup_think_proc
/* 8057ED58  3B A0 00 01 */	li r29, 1
lbl_8057ED5C:
/* 8057ED5C  7F A3 EB 78 */	mr r3, r29
/* 8057ED60  39 61 00 20 */	addi r11, r1, 0x20
/* 8057ED64  4B B1 C1 BD */	bl func_8009AF20
/* 8057ED68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057ED6C  7C 08 03 A6 */	mtlr r0
/* 8057ED70  38 21 00 20 */	addi r1, r1, 0x20
/* 8057ED74  4E 80 00 20 */	blr 
