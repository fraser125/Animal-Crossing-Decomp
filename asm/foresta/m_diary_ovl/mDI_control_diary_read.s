lbl_805CF860:
/* 805CF860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CF864  7C 08 02 A6 */	mflr r0
/* 805CF868  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CF86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CF870  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CF874  83 E5 09 E8 */	lwz r31, 0x9e8(r5)
/* 805CF878  4B FF FE 0D */	bl mDI_Set_command_read
/* 805CF87C  7C 60 07 35 */	extsh. r0, r3
/* 805CF880  41 82 00 AC */	beq lbl_805CF92C
/* 805CF884  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 805CF888  2C 00 00 00 */	cmpwi r0, 0
/* 805CF88C  40 82 00 A0 */	bne lbl_805CF92C
/* 805CF890  7C 60 07 34 */	extsh r0, r3
/* 805CF894  38 60 00 00 */	li r3, 0
/* 805CF898  2C 00 00 08 */	cmpwi r0, 8
/* 805CF89C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 805CF8A0  41 82 00 54 */	beq lbl_805CF8F4
/* 805CF8A4  40 80 00 1C */	bge lbl_805CF8C0
/* 805CF8A8  2C 00 00 03 */	cmpwi r0, 3
/* 805CF8AC  41 82 00 34 */	beq lbl_805CF8E0
/* 805CF8B0  40 80 00 68 */	bge lbl_805CF918
/* 805CF8B4  2C 00 00 02 */	cmpwi r0, 2
/* 805CF8B8  40 80 00 14 */	bge lbl_805CF8CC
/* 805CF8BC  48 00 00 5C */	b lbl_805CF918
lbl_805CF8C0:
/* 805CF8C0  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CF8C4  40 80 00 54 */	bge lbl_805CF918
/* 805CF8C8  48 00 00 40 */	b lbl_805CF908
lbl_805CF8CC:
/* 805CF8CC  7F E3 FB 78 */	mr r3, r31
/* 805CF8D0  4B FF FB D5 */	bl mDI_move_cursol_upper
/* 805CF8D4  38 00 00 03 */	li r0, 3
/* 805CF8D8  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 805CF8DC  48 00 00 3C */	b lbl_805CF918
lbl_805CF8E0:
/* 805CF8E0  7F E3 FB 78 */	mr r3, r31
/* 805CF8E4  4B FF FB E1 */	bl mDI_move_cursol_lower
/* 805CF8E8  38 00 00 04 */	li r0, 4
/* 805CF8EC  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 805CF8F0  48 00 00 28 */	b lbl_805CF918
lbl_805CF8F4:
/* 805CF8F4  7F E3 FB 78 */	mr r3, r31
/* 805CF8F8  4B FF FC 31 */	bl mDI_move_cursol_upper10
/* 805CF8FC  38 00 00 05 */	li r0, 5
/* 805CF900  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 805CF904  48 00 00 14 */	b lbl_805CF918
lbl_805CF908:
/* 805CF908  7F E3 FB 78 */	mr r3, r31
/* 805CF90C  4B FF FC 51 */	bl mDI_move_cursol_lower10
/* 805CF910  38 00 00 06 */	li r0, 6
/* 805CF914  B0 1F 00 32 */	sth r0, 0x32(r31)
lbl_805CF918:
/* 805CF918  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805CF91C  2C 00 00 00 */	cmpwi r0, 0
/* 805CF920  41 82 00 0C */	beq lbl_805CF92C
/* 805CF924  38 60 00 35 */	li r3, 0x35
/* 805CF928  48 05 E3 DD */	bl sAdo_SysTrgStart
lbl_805CF92C:
/* 805CF92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CF930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CF934  7C 08 03 A6 */	mtlr r0
/* 805CF938  38 21 00 10 */	addi r1, r1, 0x10
/* 805CF93C  4E 80 00 20 */	blr 
