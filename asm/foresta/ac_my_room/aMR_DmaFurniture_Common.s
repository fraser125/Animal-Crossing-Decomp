lbl_80472108:
/* 80472108  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047210C  7C 08 02 A6 */	mflr r0
/* 80472110  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472114  39 61 00 20 */	addi r11, r1, 0x20
/* 80472118  4B C2 8D B9 */	bl func_8009AED0
/* 8047211C  28 05 00 00 */	cmplwi r5, 0
/* 80472120  7C 7C 1B 78 */	mr r28, r3
/* 80472124  7C 9D 23 78 */	mr r29, r4
/* 80472128  7C DE 33 78 */	mr r30, r6
/* 8047212C  41 82 00 6C */	beq lbl_80472198
/* 80472130  4B FF E0 71 */	bl func_804701A0
/* 80472134  2C 1E FF FF */	cmpwi r30, -1
/* 80472138  7C 7F 1B 78 */	mr r31, r3
/* 8047213C  41 82 00 14 */	beq lbl_80472150
/* 80472140  3C 60 81 1D */	lis r3, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80472144  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80472148  38 63 DF F4 */	addi r3, r3, l_bank_index_table@l /* 0x811CDFF4@l */
/* 8047214C  7F C3 01 AE */	stbx r30, r3, r0
lbl_80472150:
/* 80472150  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80472154  28 03 00 00 */	cmplwi r3, 0
/* 80472158  41 82 00 38 */	beq lbl_80472190
/* 8047215C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80472160  28 00 00 00 */	cmplwi r0, 0
/* 80472164  41 82 00 2C */	beq lbl_80472190
/* 80472168  7F 83 E3 78 */	mr r3, r28
/* 8047216C  4B FF EC 65 */	bl aMR_FtrNo2BankAddress
/* 80472170  80 BF 00 30 */	lwz r5, 0x30(r31)
/* 80472174  7C 64 1B 78 */	mr r4, r3
/* 80472178  7F A3 EB 78 */	mr r3, r29
/* 8047217C  81 85 00 10 */	lwz r12, 0x10(r5)
/* 80472180  7D 89 03 A6 */	mtctr r12
/* 80472184  4E 80 04 21 */	bctrl 
/* 80472188  38 60 00 01 */	li r3, 1
/* 8047218C  48 00 00 10 */	b lbl_8047219C
lbl_80472190:
/* 80472190  38 60 00 01 */	li r3, 1
/* 80472194  48 00 00 08 */	b lbl_8047219C
lbl_80472198:
/* 80472198  38 60 00 00 */	li r3, 0
lbl_8047219C:
/* 8047219C  39 61 00 20 */	addi r11, r1, 0x20
/* 804721A0  4B C2 8D 7D */	bl func_8009AF1C
/* 804721A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804721A8  7C 08 03 A6 */	mtlr r0
/* 804721AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804721B0  4E 80 00 20 */	blr 
