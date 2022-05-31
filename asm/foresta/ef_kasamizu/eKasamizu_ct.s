lbl_8061275C:
/* 8061275C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80612760  7C 08 02 A6 */	mflr r0
/* 80612764  38 80 00 00 */	li r4, 0
/* 80612768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061276C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80612770  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80612774  7C 7E 1B 78 */	mr r30, r3
/* 80612778  AB E5 00 00 */	lha r31, 0(r5)
/* 8061277C  7F E3 FB 78 */	mr r3, r31
/* 80612780  4B DF 9E DD */	bl Matrix_RotateY
/* 80612784  3C 60 80 6D */	lis r3, base_offset@ha /* 0x806D2CF8@ha */
/* 80612788  38 81 00 08 */	addi r4, r1, 8
/* 8061278C  38 63 2C F8 */	addi r3, r3, base_offset@l /* 0x806D2CF8@l */
/* 80612790  4B DF AC 75 */	bl Matrix_Position
/* 80612794  38 7E 00 10 */	addi r3, r30, 0x10
/* 80612798  38 81 00 08 */	addi r4, r1, 8
/* 8061279C  7C 65 1B 78 */	mr r5, r3
/* 806127A0  4B DA 87 A5 */	bl xyz_t_add
/* 806127A4  B3 FE 00 4C */	sth r31, 0x4c(r30)
/* 806127A8  38 00 00 18 */	li r0, 0x18
/* 806127AC  B0 1E 00 00 */	sth r0, 0(r30)
/* 806127B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806127B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806127B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806127BC  7C 08 03 A6 */	mtlr r0
/* 806127C0  38 21 00 20 */	addi r1, r1, 0x20
/* 806127C4  4E 80 00 20 */	blr 
